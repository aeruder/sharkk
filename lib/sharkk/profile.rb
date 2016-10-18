module Sharkk
  class Profile
    attr_accessor :buttons
    attr_accessor :polling_rate
    attr_accessor :color
    attr_accessor :dpis
    attr_accessor :current_dpi

    def initialize
      @buttons = []
      # Left button
      @buttons << Mapping::Mouse.new(:left)
      # Right button
      @buttons << Mapping::Mouse.new(:right)
      # Middle button
      @buttons << Mapping::Mouse.new(:middle)
      # Blue button on top-left
      @buttons << Mapping::Fire.new(:left, repeat: 3, ms: 1)
      # Top right of DPI indicator
      @buttons << Mapping::RateUp.new
      # Bottom right of DPI indicator
      @buttons << Mapping::RateDown.new
      # Top left of DPI indicator
      @buttons << Mapping::DpiUp.new
      # Bottom left of DPI indicator
      @buttons << Mapping::DpiDown.new
      # Top-left of side buttons
      @buttons << Mapping::SingleKey.new(Mapping::KeyboardPage::LeftAlt)
      # Top-center of side buttons
      @buttons << Mapping::SingleKey.new(Mapping::KeyboardPage::LeftCtrl)
      # Top-right of side buttons
      @buttons << Mapping::SingleKey.new(Mapping::KeyboardPage::LeftShift)
      # Bottom-left of side buttons
      @buttons << Mapping::Forward.new
      # Bottom-right of side buttons
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
