module Sharkk
  module Mapping
    # Generic wrapper for a keycode
    class Keycode
      attr_accessor :usage_id, :page
      def initialize(usage_id, page)
        @usage_id = usage_id
        @page = page
        unless [:consumer, :keyboard].include? @page
          raise ArgumentError.new("<page> must be :consumer or :keyboard")
        end
        unless (0..65535) === @usage_id
          raise ArgumentError.new("<usage_id> must be 0..65535")
        end
      end
    end
    # A mapping to a single key
    class SingleKey < Base
      attr_accessor :keycode
      # keycode should be a value from 0-65535
      # page can either be :keyboard (see HID Usage Tables keyboard/keypad page 0x7)
      # or :consumer (see HID Usage Tables consumer page 0xc)
      def initialize(keycode)
        @keycode = keycode
      end
      def to_bytes
        norm_page = case keycode.page
                    when :consumer; 0xe
                    when :keyboard; 0x10
                    else; raise ArgumentError.new("invalid page #{keycode.page}")
                    end
        [norm_page, 0x00, keycode.usage_id & 0xff, keycode.usage_id >> 8]
      end
    end

    # combo key (modifier + key)
    class ComboKey < Base
      attr_accessor :modifiers, :keycode
      # modifiers can be :shift, :alt, :ctrl, :win or an array
      # of multiple
      def initialize(modifiers, keycode)
        @modifiers = modifiers
        @keycode = keycode
      end

      def to_bytes
        norm_modifiers = modifiers
        norm_modifiers = [norm_modifiers] unless norm_modifiers.responds_to? :each
        flags = 0x00
        norm_modifiers.each do |m|
          flags |= case m
                   when :win; 0x8
                   when :ctrl; 0x1
                   when :shift; 0x2
                   when :alt; 0x4
                   else; 0x0
                   end
        end

        norm_key = case keycode.usage_id
                   when 1..255; keycode.usage_id
                   else; 0x27
                   end

        [0x0f, flags, norm_key, 0x00]
      end
    end
  end
end
