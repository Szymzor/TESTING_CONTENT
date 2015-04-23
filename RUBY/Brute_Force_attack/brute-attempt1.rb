puts "Type characters range to be mentioned in password search:"

tekst = gets.chomp.split("")



tablica = (0..(tekst.length-1)).inject([]) { |acc, a| 
  acc + tekst.product(*[tekst]*a).map(&:join)

}

success= "OK"





password = "pass"

tablica.each {|x|
if x != password
    puts "Trying: " + x; sleep(0.005); 
  elsif x == password
  	abort("Done. Your password is '#{x}'.")
  	success = success + "!"
  end
}

if success[-1] == "!"
	puts "END"
else
	puts "No password found: try to include more characters"
end



  