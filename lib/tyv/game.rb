module Tyv
	class Game
		attr_accessor :number
		
		def initialize
			@number = generate_random_number 
		end

		def check(n)
      reg_counter = 0
      good_counter = 0
      idx = 0
      n.scan(/./) do |i|
        if i == @number[idx]
          good_counter += 1
        else
          reg_counter += 1 if @number.include?(i)
        end
        idx += 1
      end
      result = ""
      result = "#{good_counter}B" if good_counter > 0
      result = "#{reg_counter}R" if reg_counter > 0
      result
		end

		private
		def generate_random_number
			final_number = ""			
			while final_number.size < 4
				n = rand(10)	
				while final_number.include?("#{n}")
					n = rand(10)
				end
				final_number += "#{n}"
      end
			final_number
		end
	end
end