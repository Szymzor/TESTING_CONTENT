arr2 = ["xxxx xxxx xxxx","aaaa aaaa aaaa","yy oiouiuoiuaadf adsjfj adf"]


string = arr2.each {|arr_elem|
	$space_counter = 0
	$char_counter = 0

	arr_elem.each_char {|x| 
		
		if x == " "
			$space_counter += 1
			#puts $char_counter
		end
		$char_counter += 1

		if $space_counter == 2
			puts arr_elem[0,$char_counter]
			break
		end
	}

}