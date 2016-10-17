module Sharkk
  class Profile
    attr_accessor :buttons
    def initialize
      @buttons = []
      @buttons << Mapping::Mouse.new(:left)
      @buttons << Mapping::Mouse.new(:right)
      @buttons << Mapping::Mouse.new(:middle)
      @buttons << Mapping::Fire.new(:left, repeat: 3, ms: 1)
      @buttons << Mapping::RateUp.new
      @buttons << Mapping::RateDown.new
      @buttons << Mapping::DpiUp.new
      @buttons << Mapping::DpiDown.new
      @buttons << Mapping::SingleKey.new(Mapping::KeyboardPage::LeftAlt)
      @buttons << Mapping::SingleKey.new(Mapping::KeyboardPage::LeftCtrl)
      @buttons << Mapping::SingleKey.new(Mapping::KeyboardPage::LeftShift)
      @buttons << Mapping::Forward.new
      @buttons << Mapping::Backward.new
    end
    def to_data
      to_bytes.pack("C*")
    end
    def to_bytes
      (0..12).map { |i|
        @buttons[i].to_bytes
      }.flatten
    end
  end
end
