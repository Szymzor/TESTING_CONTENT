File.open("out.txt", "w")     



$stdout.reopen("out.txt", "w")

	for i in 1..10000 do
		begin
			checkmark = "\"" + "\\" + "u" +"#{i}" + "\""
			a = eval(checkmark)
			puts "#{i}     " + a.encode('utf-8')
		rescue SyntaxError, NameError 
			i = i + 1
		end
	end
