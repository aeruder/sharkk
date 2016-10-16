require 'ffi_gen'

FFIGen.generate(
  module_name: "Libudev",
  ffi_lib:     "udev",
  headers:     ["libudev.h"],
  output:      "libudev.rb"
)
