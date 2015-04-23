# encoding: utf-8

	

CAPTURE_EURO = Transform /^€(\d+)$/ do |digits|
	digits.to_i
	end


Transform /^(\d+)$/ do |all_d_signs|
	all_d_signs.to_i
end



Given(/^I've got (.)(\d+)$/) do |symbol, dollars|
# dot trick - it's completely ignoring dollar symbol
$dollars = dollars
puts symbol + " - this is ignored"
puts $dollars

end


Given(/^I have (#{CAPTURE_EURO}) in my pocket$/) do |euros|
# CAPTURE_EURO takes euro symbol in advantage
$euros = euros
puts $euros
end


Then(/^I cannot just add them and have \?(\d+)$/) do |equation|
puts equation
expect(equation).to eq($dollars+$euros), "Erm... ERROR!"
end
