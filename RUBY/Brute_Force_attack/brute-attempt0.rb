alfabet = [*('a'..'z'*4)]
password = "asa"
alfabet = alfabet.to_a
alfabet.each{|x| 
  unless x == password
    puts "Trying: " + x; sleep(0.01); 
  else
    abort("Done. Your password is '#{x}'")
  end
}