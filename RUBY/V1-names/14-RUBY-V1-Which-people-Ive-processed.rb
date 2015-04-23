#file with pasted names and surnames of processed people (range)
data_file = File.read('./xls.txt')
data_no_enter = data_file.split("\n")

#file with pasted names and surnames from google sheet 
google_file = File.read('./google.txt')
google_no_enter = google_file.split("\n")

google_arr = []

string = google_no_enter.each {|arr_elem|
	$space_counter = 0
	$char_counter = 0

	arr_elem.each_char {|x| 
		
		
		if x == " "
			$space_counter += 1
			#puts $char_counter
		end
		$char_counter += 1

		if $space_counter == 2
			google_arr << arr_elem[0,$char_counter-1]
			break
		end
	}

}

google_arr.uniq!

new_arry = []

new_arry = data_no_enter & google_arr

puts new_arry
