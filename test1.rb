require "libusb"

data = "\x02\x04\x46\xff\xfe\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00".b
File.open("/dev/hidraw2", "wb+") { |f|
  p "test"
  f.write data
  p "test2"
  p f.read
  p "test3"
}
