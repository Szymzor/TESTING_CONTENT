require 'colorize'

AfterConfiguration do
	puts "AfterConfiguration".blue
end


AfterStep do
	puts "AfterStep".blue
end


at_exit do
	puts "at exit hook".blue
end