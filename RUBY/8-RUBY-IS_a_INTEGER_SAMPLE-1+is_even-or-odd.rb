def ifinteger(number)
	unless number.is_a? Integer
		puts "that's not an integer"
	else
		puts "Good choice! \nLet's check if it's even"
		division = number%2
		if division == 0
			puts "It's an even number (#{number}/2=#{number/2} rest #{division})"
		else
			puts "Given number is odd"
		end
	end
end

number = 7

puts "Your number is: #{number}"

ifinteger(number)