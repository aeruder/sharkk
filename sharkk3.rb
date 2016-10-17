$:.unshift File.expand_path('../lib', __FILE__)
require 'sharkk'

Sharkk::Mouse.open { |m|
  m.set_color Sharkk::Color.new(128, 0, 255, brightness: 3, breath: 0)
}
