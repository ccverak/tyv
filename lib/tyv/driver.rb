module Tyv
  class Driver
    def initialize(options = {})
      @provider = options[:provider]
      @game = options[:game] if options[:game]
      @game ||= Game.new
    end

    def guess
      num = input
      result = @game.check(num)
      while result != "4B"
        output(result)
        num = input
        result = @game.check(num)
      end
      output("You won!")
    end

    def input
      @provider.input
    end

    def output(out)
      @provider.output(out)
    end
  end
end