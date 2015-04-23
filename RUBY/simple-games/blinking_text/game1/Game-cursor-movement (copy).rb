require 'curses'
Curses.curs_set(0)		#the cursor is invisible.
Curses.noecho			#does not show input of getch


class Game
	#set start position of a square
	$x = 4
	$y = 4

	def set_pos
		Curses.clear
		Curses.setpos($y,$x)
	    Curses.addstr("\u2588\u2588")
	end


	def hit_border?		#sets borders of a screen
		if $x < 0
		$x = 0
		
		elsif $y > 23
		$y = 23
	
		elsif $x > 78
		$x = 78

		elsif $y < 0
		$y = 0
		end
		set_pos
	end
end

@run = Game.new
@run.set_pos

	loop do
	  case Curses.getch
		when ?d
	   		$x = $x + 2
	    	@run.hit_border?
		when ?s
		  	$y = $y + 1
		  	@run.hit_border?
		when ?a
		  	$x = $x - 2
			@run.hit_border?
		when ?w
		  	$y = $y - 1
		  	@run.hit_border?
	  end
	end