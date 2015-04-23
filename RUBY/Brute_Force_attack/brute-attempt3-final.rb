#AUTHOR: SZYMON BASIAK

#create array which number of elements is string.length 
#create for loop that will do following:
  #add numbers to this "0" until greater than 5
  #when 0-indexed element is > 5, then push new element and set the previous value to "0"
#do it for array with max 3 elements

password = "aAbBcCd"

space = " "
string = space + "abcd"
string_array = string.split('')

len = string_array.length-1
arr = Array.new(len, 0.to_i)
string_array = string.split('')


while true do begin

	for p in 2..(len)
		
		if (arr[-1]) > len   #nie ruszać!!
			arr[-1] = 1
			arr[-2] += 1
		end

		if (arr[-p]) > len
			arr[-p] = 1
			arr[-p-1] += 1
		end
	end

	letters =  arr.collect {|g| string_array[g]}
	letters = letters.to_s
	letters = letters.gsub(", ","")
	letters = letters.gsub(" ,","")
	letters = letters.gsub('"',"")
	letters = letters.gsub(" ","")
	letters = letters.gsub("[","")
	letters = letters.gsub("]","")

	print "#{letters}   "
	print "#{arr}\n"

	if letters == password
		puts "Password found ('#{password}')"
		exit
	end

	rescue Exception => e
		exit
	end

	arr[-1] += 1
	sleep(0.05)
end


