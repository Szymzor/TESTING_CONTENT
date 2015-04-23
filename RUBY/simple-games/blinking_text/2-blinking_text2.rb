#inicjacja zmiennych zawierających tekst
text = "MRUGAJACY NAPIS"
arr = text.split("")
space = ""

#litera po literze
for i in 0..arr.length do
	 print space + "#{arr[i]}" 
	 print "\r"
	 space = space + " "
	sleep(0.3)
end

#mruganie
for i in 0..10
	print "\r" + text
	sleep (0.1)
	print "\r               "
	sleep (0.1)
end

#zostaw napis na ekranie
print "\r" + text