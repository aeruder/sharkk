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

    # rgb = 0-255
    # brighness = 0 - 3
    # fade_sec = 0 (disabled), >0 = number of seconds it takes to fade out (goes up to 6 at least), 0, 1, 3, 6 work for sure
    def set_color(color)
      bytes = [0x02, 0x04] +
        color.to_bytes +
        [0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00]
      raw_set_feature(bytes.pack("C*"))
    end
    def set_profile_color(profile, color)
      bytes = [0x02, 0x02, 0xf1, profile, 0x06, 0x00, 0xfa, 0xfa] +
        color.to_bytes +
        [0x00, 0x00, 0x00]
      raw_set_feature(bytes.pack("C*"))
    end
    # profile is 0 - 4
    def set_profile(profile)
      bytes = [
        0x02, 0x02, 0x43, 0x00, 0x01, 0x00, 0xfa, 0xfa,
        profile, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ]
      raw_set_feature(bytes.pack("C*"))
      bytes = [
        0x02, 0x01, 0x01, profile, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ]
      raw_set_feature(bytes.pack("C*"))
    end
    def save_profile(profile)
      bytes = [
        0x02, 0x02, 0xf1, profile, 0x06, 0x00, 0xfa, 0xfa,
        0x36, 0xf4, 0x00, 0x02, 0x03, 0x00, 0x00, 0x00
      ]
      raw_set_feature(bytes.pack("C*"))
      bytes = [
        0x03, 0x02, 0x4f, 0x03, 0x2a, 0x00, 0xfa, 0xfa,
        0x05, profile, 0x01, 0x14, 0x00, 0x14, 0x00, 0x00,
        0x00, 0x00, 0x01, 0x28, 0x00, 0x28, 0x00, 0x01,
        0x00, 0x00, 0x01, 0x50, 0x00, 0x50, 0x00, 0x03,
        0x00, 0x00, 0x01, 0xa4, 0x00, 0xa4, 0x00, 0x07,
        0x00, 0x00, 0x01, 0x48, 0x01, 0x48, 0x01, 0x0f,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
      ]
      raw_set_feature(bytes.pack("C*"))
      bytes = [
        0x02, 0x02, 0x4c, 0x00, 0x01, 0x00, 0xfa, 0xfa,
        0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
      ]
      raw_set_feature(bytes.pack("C*"))
      bytes = [
        0x02, 0x02, 0x43, 0x00, 0x01, 0x00, 0xfa, 0xfa,
        profile, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ]
      raw_set_feature(bytes.pack("C*"))
      bytes = [
        0x02, 0x06, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
      ]
      raw_set_feature(bytes.pack("C*"))
    end
    def reset
      bytes = [
        0x02, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
      ]
      raw_set_feature(bytes.pack("C*"))
    end
    # save profile
    def set_keys(profile, keys)
      data = keys.inject("".b) { |m,v| m + v.data }
      bytes = [
        0x04, 0x02, 0x90, profile, 0x39, 0x00, 0xfa, 0xfa,
        0x0e, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00,
        0x00, 0x03, 0x00, 0x00, 0x00, 0x19, 0x81, 0x03,
        0x01, 0x17, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00,
        0x00, 0x0a, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00,
        0x00, 0x10, 0x00, 0xe2, 0x00, 0x10, 0x00, 0xe0,
        0x00, 0x10, 0x00, 0xe1, 0x00, 0x05, 0x00, 0x00,
        0x00, 0x04, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x00 ] + ([0x00] * 960)
      bytes = bytes.pack("C*")
      bytes[9,data.length] = data
      raw_set_feature(bytes)
    end
  end
end
