require 'curses'
include Curses 	#use include if dont want to prefix library commands with class name

class Snake
	def initialize							 #constructor
		@win = Window.new(lines, cols, 0, 0) #set the playfield the size of current terminal window
		@title = "Kirka's Snake"
	end
	
	def refresh_window	
		@win.refresh
		@win.clear
	end

	def setup_window(border_wall, border_roof)
		@win.box(border_wall, border_roof)				# border
		@win.setpos(0,cols/2-@title.length/2)
		@win.addstr(@title)
		@win.setpos(0,cols-12)
		@win.addstr("Ticks ")
	end



##############################################################

init_screen

noecho						#does not show input of getch
######stdscr.nodelay = 1 			#the getch doesnt system_pause while waiting for instructions
curs_set(0)					#the cursor is invisible.
@snake = Snake.new

def speed_of_play
		sleep(0.002)
end


	loop do
		@snake.setup_window("|","=")
		@snake.refresh_window
		@snake.speed_of_play
	end
	
end

