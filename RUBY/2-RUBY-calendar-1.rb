require 'date'

print "Enter year: "; year = gets.chomp
print "Enter month: "; month = gets.chomp
print "Enter day: "; day = gets.chomp

date = Date.new(year.to_i,month.to_i,day.to_i).to_time

number = date.to_i

if number==(-62104757040)
	puts "\n Yay, Jesus Birthday!"
else
	puts "\n"
end

puts "  You've typed: \n #{date}"

day_of_week1 = Time.at(number).wday
day_of_week = "#{day_of_week1}"

weekday_names = {
	"1" => "Monday",
	"2" => "Tuesday",
	"3" => "Wednesday",
	"4" => "Thursday",
	"5" => "Friday",
	"6" => "Saturday",
	"7" => "Sunday",
}

day_of_week.gsub(/[[:word:]]+/).each do |word|
  puts "It was #{weekday_names[word]}"
end