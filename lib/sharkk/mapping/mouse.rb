module Sharkk
  module Mapping
    # A simple mouse-button mapping.
    class Mouse < Base
      attr_accessor :button
      # Initialize with :left, :middle, or :right
      def initialize(button = :left)
        @button = button
      end
      def to_bytes
        [ case button
          when :right; 2; when :middle; 3; else; 1
          end ,
          0, 0, 0 ]
      end
    end
  end
end
