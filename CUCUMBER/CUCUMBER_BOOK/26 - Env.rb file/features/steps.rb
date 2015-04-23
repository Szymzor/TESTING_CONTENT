ALL_TO_INTEGER = Transform /^(\d+)$/ do |digits|
  digits.to_i
end


runApp = Calculator.new


Given(/^first number is (#{ALL_TO_INTEGER})$/) do |number1|
  $number1 = number1
  puts $number1
end

And(/^second number is (#{ALL_TO_INTEGER})$/) do |number2|
  $number2 = number2
  puts $number2
end

Then(/^sum of them is (#{ALL_TO_INTEGER})$/) do |result|
  function_adding = runApp.adding($number1, $number2)
  expect(function_adding.to_i).to eq(result)
  puts function_adding
end