require 'curses'
include Curses 								#use include if dont want to prefix library commands with class name
#require 'time'

class Snake
		

	def initialize							 #constructor
		@win = Window.new(lines, cols, 0, 0) #set the playfield the size of current terminal window
		@title = "Kirka's Snake"
		@dir = :down
		@pause = false
		@snake_len = 3
		@game_speed = 0.2
		@start_time = Time.now.to_i
		@speed_incremented = false
		@display_speed = 0
		@game_score = 0
		@end_game = false
		@ticks = 0
	end
	
	def refresh_window	
		@win.refresh
		@win.clear
	end

	def setup_window(border_wall, border_roof)
		@time_offset = Time.now.to_i - @start_time 		#time does not stop ticking when paused. this is a bit of logic. we use time only for score.
		@win.box(border_wall, border_roof)				# border

		@win.setpos(0,3)
		@win.addstr("Snake Length: " + @snake_len.to_s)

		@win.setpos(0,cols/2-@title.length/2)
		@win.addstr(@title)

		@win.setpos(0,cols-12)
		@win.addstr("Ticks: " + @ticks.to_s)

		@win.setpos(lines-1,3)
		@win.addstr("Speed: " + @display_speed.to_s)

		@win.setpos(lines-1,cols-12)
		@win.addstr("Score: " + (@game_score-(@time_offset)/10.round(0)).to_s)
	end



init_screen
cbreak
noecho						#does not show input of getch
stdscr.nodelay = 1 			#the getch doesnt system_pause while waiting for instructions
curs_set(0)					#the cursor is invisible.
@snake = Snake.new



def speed_of_play
		sleep(0.002)
end


	loop do
		
		@snake.setup_window("+","-")

		@snake.refresh_window

		@snake.speed_of_play
	end
	
end

