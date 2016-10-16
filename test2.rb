require "hidapi"

my_dev = HIDAPI::open(0x04d9, 0xfc05)
puts my_dev.inspect
