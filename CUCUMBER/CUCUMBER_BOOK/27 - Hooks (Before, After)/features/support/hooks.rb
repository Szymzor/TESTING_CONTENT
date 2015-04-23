Before do
	puts "START!"
end

After do
	 p "Stop1"
     puts "Stop2 not printed, because of Ruby's limitation"
     STDOUT.puts "Stop3"
     print "Stop4"
end