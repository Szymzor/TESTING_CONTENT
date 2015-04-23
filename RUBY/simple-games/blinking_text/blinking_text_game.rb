require 'curses'

score = 0

Curses.noecho # do not show typed keys
Curses.init_screen

for i in 0..3 do
  $blink= 1
  print $blink
  sleep 1
  $blink = "\r      "
  print $blink
  sleep 0.2
end

loop do
  case Curses.getch
  when ?Z, ?z
  	if $blink == 1
	    Curses.setpos(0,0)
	    puts "point"
	else
		Curses.setpos(0,0)
		puts "bad"
	end
  end
end