require_relative 'libudev'

module Sharkk
  VENDOR_ID = 0x04d9
  PRODUCT_ID = 0xfc05
  SFEATURE_IOCTL = 0xc0004806
  GFEATURE_IOCTL = 0xc0004807
  LEN_OFFSET_IOCTL = 16

  class << self
    def get_devices
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

    def open(dev, &block)
      File.open(dev, "wb+", &block)
    end

    def set_feature(io, data)
      io.ioctl(SFEATURE_IOCTL + (data.length << LEN_OFFSET_IOCTL), data)
    end

    # rgb = 0-255
    # brighness = 0 - 3
    # fade_sec = 0 (disabled), >0 = number of seconds it takes to fade out (goes up to 6 at least)
    def set_color(io, r, g, b, brightness, fade_sec)
      bytes = [
        0x02, 0x04, 255 - r, 255 - g, 255 - b, brightness, fade_sec, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ]
      set_feature(io, bytes.pack("C*"))
    end
    # profile is 0 - 4
    def set_profile(io, profile)
      bytes = [
        0x02, 0x02, 0x43, 0x00, 0x01, 0x00, 0xfa, 0xfa,
        profile, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ]
      set_feature(io, bytes.pack("C*"))
      bytes = [
        0x02, 0x01, 0x01, profile, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ]
      set_feature(io, bytes.pack("C*"))
    end
    # save profile
    def save_profile(io, profile)
      bytes = [
        0x04, 0x02, 0x90, profile, 0x39, 0x00, 0xfa, 0xfa,
        0x0e, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00,
        0x00, 0x03, 0x00, 0x00, 0x00, 0x19, 0x81, 0x03,
        0x01, 0x17, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00,
        0x00, 0x0a, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00,
        0x00, 0x10, 0x00, 0xe2, 0x00, 0x10, 0x00, 0xe0,
        0x00, 0x10, 0x00, 0xe1, 0x00, 0x05, 0x00, 0x00,
        0x00, 0x04, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x00 ] + ([0x00] * 960)
      set_feature(io, bytes.pack("C*"))
    end
  end
end

puts "Scanning for Sharkk Gaming Mouse interface"
device = Sharkk::get_devices.first
unless device
  puts "No device found"
  exit 1
end
puts "Found Sharkk gaming mouse at #{device}"

Sharkk::open(device) { |io|
  Sharkk::set_color(io, 255, 255, 255, 3, 1)
}
