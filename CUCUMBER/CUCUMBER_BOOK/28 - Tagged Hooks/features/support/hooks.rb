require 'colorize'

Before('@test1') do
	puts "Before @test1".red
end

After('@test1') do
     STDOUT.puts "After @test1".red
end










Before('@test2') do
	puts "Before @test2".red
end

After('@test2') do
     STDOUT.puts "After @test2".red
end