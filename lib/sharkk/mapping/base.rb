module Sharkk
  module Mapping
    # This is a abstract class for other mappings.
    class Base
      def initialize
        if self.class == Mapping
          raise NotImplementedError.new("this function should be overwritten")
        end
      end

      def to_data
        to_bytes.pack("C*")
      end

      def to_bytes
        raise NotImplementedError.new("this function should be overwritten in #{self.class}")
      end
    end
  end
end
