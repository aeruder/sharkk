module Sharkk
  module Mapping
    # Forward
    class Forward < Base
      def to_bytes
        [0x05, 0x0, 0x0, 0x0]
      end
    end

    # Backward
    class Backward < Base
      def to_bytes
        [0x04, 0x0, 0x0, 0x0]
      end
    end

    # Adjusts the DPI higher
    class DpiUp < Base
      def to_bytes
        [0xa, 0x0, 0x0, 0x0]
      end
    end

    # Adjusts the DPI lower
    class DpiDown < Base
      def to_bytes
        [0x9, 0x0, 0x0, 0x0]
      end
    end

    # DPI cycle
    class DpiCycle < Base
      def to_bytes
        [0x8, 0x0, 0x0, 0x0]
      end
    end

    # Profile switch
    class ProfileSwitch < Base
      def to_bytes
        [0xd, 0x0, 0x0, 0x0]
      end
    end

    # Adjusts the reporting rate up
    class RateUp < Base
      def to_bytes
        [0x17, 0x0, 0x0, 0x0]
      end
    end

    # Adjusts the reporting rate down
    class RateDown < Base
      def to_bytes
        [0x18, 0x0, 0x0, 0x0]
      end
    end

    # Disables the key entirely
    class Disable < Base
      def to_bytes
        [0xe, 0x0, 0x0, 0x0]
      end
    end
  end
end
