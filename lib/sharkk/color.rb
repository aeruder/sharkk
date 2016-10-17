module Sharkk
  # This class contains a mouse LED color.  In addition to
  # the full RGB specification, it can also control the 'breath'
  # speed (0-3) and the brightness (0-3).
  class Color
    attr_accessor :r, :g, :b, :breath, :brightness
    # Initialize the color rgb
    def initialize(r, g, b, breath: 3, brightness: 3)
      @r = r
      @g = g
      @b = b
      @breath = breath
      @brightness = brightness
    end
    # Return the string-encoded bytes
    def to_data
      to_bytes.pack("C*")
    end
    # Return an array of byte values
    def to_bytes
      normalized_brightness = case brightness
                              when 0; 0; when 1; 1
                              when 2; 2; else; 3
                              end
      normalized_breath = case breath
                          when 0; 0; when 1; 6
                          when 2; 3; else; 1
                          end

      [ 255 - r, 255 - g, 255 - b,
        normalized_brightness, normalized_breath ]
    end
  end
end
