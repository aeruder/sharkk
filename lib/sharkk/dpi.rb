module Sharkk
  class Dpi
    attr_accessor :x, :y
    attr_accessor :enabled

    def dpi=(dpi)
      self.x = dpi
      self.y = dpi
    end

    def initialize(x, y=nil)
      y = x unless y
      @x = x
      @y = y
      @enabled = true
    end

    def to_bytes
      norm_x = (x.to_i + 49) / 50
      norm_x = [0, 0x148, norm_x].sort[1]
      norm_y = (y.to_i + 49) / 50
      norm_y = [0, 0x148, norm_y].sort[1]

      [ enabled ? 1 : 0,
        norm_x & 0xff, norm_x >> 8,
        norm_y & 0xff, norm_y >> 8 ]
    end

    def to_data
      to_bytes.pack("C*")
    end
  end
end
