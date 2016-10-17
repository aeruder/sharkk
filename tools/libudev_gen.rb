require 'ffi_gen'

FFIGen.generate(
  module_name: "Sharkk::Libudev",
  ffi_lib:     "udev",
  headers:     ["libudev.h"],
  output:      "../lib/sharkk/libudev.rb"
)
