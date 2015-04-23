str = "abcdefghijklmnoprstuvwxyz"

$counter = 0
$symbol_count = 5

for g in 0..(str.length/$symbol_count)-1
	for i in 0..($symbol_count-1)
		print "#{str[$counter]}"
		sleep(0.01)
		$counter = $counter + 1
	end
	puts
end

puts str.length