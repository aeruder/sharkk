module Sharkk
  class Profile
    attr_accessor :buttons
    attr_accessor :polling_rate
    attr_accessor :color
    attr_accessor :dpis
    attr_accessor :current_dpi

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

      @polling_rate = PollingRate.new(500)
      @color = Color.new(0, 0, 255, 3, 3)
      @dpis = []
      @dpis << Dpi.new(1000)
      @dpis << Dpi.new(2000)
      @dpis << Dpi.new(4000)
      @dpis << Dpi.new(8200)
      @dpis << Dpi.new(16400)
      @current_dpi = 1
    end
  end
end
