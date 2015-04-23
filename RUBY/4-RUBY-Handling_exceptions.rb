puts var1 = 3
puts var2 = "4"

begin (var1.to_f+var2.to_f) == var1+var2
	puts "#{var1.to_f+var2.to_f} == #{var1+var2}"
	puts "because #{var1}=#{var1.class} and #{var2}=#{var2.class} and you can add them!"
rescue
	puts "Not equals!"
	puts "because #{var1}=#{var1.class} and #{var2}=#{var2.class} and you cannot add them!"
end
