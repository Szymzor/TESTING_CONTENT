require 'colorize'

Before do |scenario|
	print "Before scenario '#{scenario.name}'".yellow
end

After do |scenario|
	scenario.failed? ? text="Test not ok".yellow : text="Test ok".yellow
    STDOUT.puts text 
end




Around do |scenario, block|
puts "About to run #{scenario.name}"
block.call
puts "Finished running #{scenario.name}"
end