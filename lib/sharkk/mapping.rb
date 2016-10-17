module Sharkk
  class Mapping
    attr_accessor :data
    def initialize(type: nil, value: nil)
      unless type
        type = :mouse
        value = 1
      end

      case type
      when :mouse
        @data = [value, 0, 0, 0].pack("C*")
      else
        raise ArgumentError.new("Unknown type #{type}")
      end
    end
  end
end
