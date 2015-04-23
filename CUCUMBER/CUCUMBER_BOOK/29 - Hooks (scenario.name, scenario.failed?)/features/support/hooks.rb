require 'colorize'

Before do |scenario|
	puts "Before scenario '#{scenario.name}'".red
end

After do |scenario|
	scenario.failed? ? text="Test not ok".yellow : text="Test ok".yellow
    STDOUT.puts text 
    print scenario.methods
end