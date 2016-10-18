module Sharkk
  class Mouse
    class << self
      def find_devices
        res = []
        udev = Libudev::udev_new()
        enum = Libudev::udev_enumerate_new(udev)
        Libudev::udev_enumerate_add_match_subsystem enum, "hidraw"
        Libudev::udev_enumerate_scan_devices enum

        device_list = Libudev::udev_enumerate_get_list_entry enum
        while device_list != FFI::Pointer::NULL
          path = Libudev::udev_list_entry_get_name(device_list)
          device = Libudev::udev_device_new_from_syspath udev, path

          if device != FFI::Pointer::NULL
            devnode = Libudev::udev_device_get_devnode device
            interface = Libudev::udev_device_get_parent_with_subsystem_devtype device, "usb", "usb_interface"
            usb_device = Libudev::udev_device_get_parent_with_subsystem_devtype device, "usb", "usb_device"
            if usb_device != FFI::Pointer::NULL && interface != FFI::Pointer::NULL
              vendor, product = [ "idVendor", "idProduct" ].map { |a|
                Libudev::udev_device_get_sysattr_value(usb_device, a)
              }.map { |a| a and a.to_i(16) }
              proto, subclass = [ "bInterfaceProtocol", "bInterfaceSubClass" ].map { |a|
                Libudev::udev_device_get_sysattr_value(interface, a)
              }.map { |a| a and a.to_i(16) }

              if vendor == VENDOR_ID && product == PRODUCT_ID &&
                  proto = 0x00 && subclass == 0x0
                res << devnode
              end
              Libudev::udev_device_unref device
            end
          end
          device_list = Libudev::udev_list_entry_get_next(device_list)
        end

        Libudev::udev_enumerate_unref(enum)
        Libudev::udev_unref(udev)

        res
      end

      # device is the /dev/hidraw device corresponding
      # to the mouse.
      def open(device = nil, &block)
        device = self.find_devices.first unless device
        raise IOError.new("No Sharkk mouse found") unless device
        if block
          io = File.open(device, "wb+")
          begin
            mouse = self.new(io)
            block.call mouse
          ensure
            if mouse
              mouse.close
            else
              io.close
            end
          end
        else
          io = File.open(device, "wb+")
          begin
            mouse = self.new(io)
            return mouse
          rescue
            io.close
            raise
          end
        end
      end
    end

    # opens the device.  If
    def initialize(io)
      @io = io
    end

    def close
      @io.close
    end

    def raw_set_feature(data)
      @io.ioctl(SFEATURE_IOCTL + (data.length << IOCTL_LEN_OFFSET), data)
    end
    private :raw_set_feature

    def raw_get_feature(report, length = nil)
      unless length
        length = case report
                 when 2
                   16
                 when 3
                   64
                 when 4
                   1024
                 when 5
                   2048
                 when 6
                   4096
                 else
                   nil
                 end
      end
      raise ArgumentError.new("length must be specified for report type #{report}") unless length
      result = ([report].pack("C") + ("\x00" * (length - 1))).b
      len = @io.ioctl(GFEATURE_IOCTL + (length << IOCTL_LEN_OFFSET), result)
      result[0...len]
    end
    private :raw_get_feature

    def write_unlock
      bytes = [
        0x02, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
      ]
      raw_set_feature(bytes.pack("C*"))
    end
    private :write_unlock

    def profile_unlock
      bytes = [
        0x02, 0x03, 0x43, 0x00, 0x01, 0x00, 0xfa, 0xfa,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
      ]
      raw_set_feature(bytes.pack("C*"))
    end
    private :profile_unlock

    def profile_prepare(profnum)
      raise ArgumentError.new("bad profile number") unless (0..4) === profnum
      bytes = [
        0x02, 0x03, 0x4f, profnum, 0x2a, 0x00, 0xfa, 0xfa,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
      ]
      raw_set_feature(bytes.pack("C*"))
    end
    private :profile_prepare

    def profile_lock
      bytes = [
        0x02, 0x02, 0x43, 0x00, 0x01, 0x00, 0xfa, 0xfa,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
      ]
      raw_set_feature(bytes.pack("C*"))
    end
    private :profile_lock

    def write_lock
      bytes = [
        0x02, 0x06, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
      ]
      raw_set_feature(bytes.pack("C*"))
    end
    private :write_lock

    def reset(profnum)
      bytes = [
        0x02, 0x01, 0x01, profnum, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ]
      raw_set_feature(bytes.pack("C*"))
    end
    private :reset

    def set_profile_color(profnum, color)
      raise ArgumentError.new("bad profile number") unless (0..4) === profnum
      bytes = [0x02, 0x02, 0xf1, profnum, 0x06, 0x00, 0xfa, 0xfa] +
        color.to_bytes +
        [0x00, 0x00, 0x00]
      raw_set_feature(bytes.pack("C*"))
    end
    private :set_profile_color

    def set_profile_polling_rate(profnum, polling_rate)
      raise ArgumentError.new("bad profile number") unless (0..4) === profnum
      bytes = [0x02, 0x02, 0x48 + profnum, 0x00, 0x01, 0x00, 0xfa, 0xfa] +
        polling_rate.to_bytes +
        [0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]
      raw_set_feature(bytes.pack("C*"))
    end
    private :set_profile_polling_rate

    def set_profile_dpis(profnum, selected_dpi, dpis)
      raise ArgumentError.new("bad profile number") unless (0..4) === profnum
      raise ArgumentError.new("bad number of dpis") unless 5 == dpis.length
      raise ArgumentError.new("bad selected dpi") unless dpis[selected_dpi].enabled
      bytes =
        [0x03, 0x02, 0x4f, profnum, 0x2a, 0x00, 0xfa, 0xfa, 0x05, selected_dpi] +
        dpis[0].to_bytes + [0x00, 0x00, 0x00] +
        dpis[1].to_bytes + [0x01, 0x00, 0x00] +
        dpis[2].to_bytes + [0x03, 0x00, 0x00] +
        dpis[3].to_bytes + [0x07, 0x00, 0x00] +
        dpis[4].to_bytes + [0x0f, 0x00, 0x00] +
        [0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
         0x00, 0x00, 0x00, 0x00, 0x00, 0x00]
      raw_set_feature(bytes.pack("C*"))
    end
    private :set_profile_dpis

    def set_profile_buttons(profnum, buttons)
      raise ArgumentError.new("bad profile number") unless (0..4) === profnum
      raise ArgumentError.new("bad number of buttons") unless 13 == buttons.length
      bytes = [0x04, 0x02, 0x90, profnum, 0x39, 0x00, 0xfa, 0xfa, 0x0e] +
        buttons[0].to_bytes + buttons[1].to_bytes +
        buttons[2].to_bytes + buttons[3].to_bytes +
        buttons[4].to_bytes + buttons[5].to_bytes +
        buttons[6].to_bytes + buttons[7].to_bytes +
        buttons[8].to_bytes + buttons[9].to_bytes +
        buttons[10].to_bytes + buttons[11].to_bytes +
        buttons[12].to_bytes + [ 0x0d, 0x00, 0x00 ] +
        ([0x00] * 960)
      raw_set_feature(bytes.pack("C*"))
    end
    private :set_profile_buttons

    def save_profile(profnum, profile)
      raise ArgumentError.new("bad profile number") unless (0..4) === profnum

      write_unlock
      begin
        profile_unlock
        begin
          profile_prepare
          set_profile_buttons(profnum, profile.buttons)
          set_profile_color(profnum, profile.color)
          set_profile_dpis(profnum, profile.current_dpi, profile.dpis)
          set_profile_polling_rate(profnum, profile.polling_rate)
        ensure
          profile_lock
        end
      ensure
        write_lock
        reset(profnum)
      end
    end

    def switch_profile(profnum)
      raise ArgumentError.new("bad profile number") unless (0..4) === profnum
      profile_lock
      reset(profnum)
    end

    def set_color(color)
      bytes = [0x02, 0x04] +
        color.to_bytes +
        [0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]
      raw_set_feature(bytes.pack("C*"))
    end
  end
end
