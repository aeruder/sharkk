require_relative 'libudev'

udev = Libudev::udev_new()
enum = Libudev::udev_enumerate_new(udev)
Libudev::udev_enumerate_add_match_subsystem enum, "hidraw"
Libudev::udev_enumerate_scan_devices enum

device_list = Libudev::udev_enumerate_get_list_entry enum
while device_list != FFI::Pointer::NULL
  puts Libudev::udev_list_entry_get_name(device_list)
  device_list = Libudev::udev_list_entry_get_next(device_list)
end

Libudev::udev_enumerate_unref(enum)
Libudev::udev_unref(udev)
