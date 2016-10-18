module Sharkk
  class PollingRate
    attr_accessor :rate
    def initialize(rate)
      @rate = rate
    end
    def to_bytes
      case rate
      when -Float::INFINITY..125; [8]
      when 126..250; [4]
      when 251..500; [2]
      when 501..Float::INFINITY; [1]
      else; [2]
      end
    end
    def to_data
      to_bytes.pack("C*")
    end
  end
end
