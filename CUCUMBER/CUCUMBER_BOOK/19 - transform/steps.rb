
Transform /^\d+$/ do |number|
	number.to_i
end

#This Cucumber method can transform any d+ (numerical value) into integer
#You can also do: TO_INTEGER=Transform...
#and then replace "(\d+)" in steps with "(#{TO_INTEGER})"

Given(/^I have (\d+)$/) do |number1|
  $number1 = number1
  puts $number1.class
end

When(/^I add (\d+) to it$/) do |number2|
  $number2 = number2
  puts $number1.class
end

Then(/^I should get (\d+)$/) do |equation|
  $equation = equation
  $equation.should eq($number1+$number2), "No it's not equal"
  puts equation.class
end