

x = 40
y = 280

for i in 1..200
x += 10
y = (y+8*(Math.sin(i/10))).round
string = "xdotool mousemove #{x} #{y}"
system(string)
sleep(0.1)

puts "#{x}   #{y}"
end
