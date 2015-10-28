module Tyv
  module Provider
    class Console
      def input
        gets.chomp
      end

      def output(str)
        puts str
      end
    end
  end
end