module Sharkk
  module Mapping
    # A mapping to repeatedly press a key at a rate
    class Fire < Base
      attr_accessor :key, :repeat, :ms
      # repeat is the number of times the key will be pressed (1-255)
      # ms is the spacing between events (1-255)
      # The key can either be :left, :middle, :right or a
      # Keycode in the :keyboard page
      def initialize(key, repeat: 3, ms: 1)
        @key = key
        @repeat = repeat
        @ms = ms
      end

      def to_bytes
        norm_ms = [1, 255, ms].sort[1]
        norm_repeat = [1, 255, repeat].sort[1]
        norm_key = case key
                   when :right; 0x82
                   when :middle; 0x84
                   when Keycode; key.usage_id
                   when 1..255; key
                   else; 0x81
                   end
        [ 0x19, norm_key, norm_repeat, norm_ms ]
      end
    end
  end
end
