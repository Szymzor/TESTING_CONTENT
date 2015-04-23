Given(/^I I have \$(100) in my account$/) do |arg1|
  puts "\\\$100 means: only 100"
end

Given(/^II I have \$(100|200) in my account$/) do |arg1|
  puts "\\$(100|200) means: OR"
end

Given(/^III I have \$(...) in my account$/) do |arg1|
  puts "\\$(...) means: 3 digit number"
end

Given(/^IV I have \$(.*) in my account$/) do |arg1|
  puts "\\$(.*) means: use '.' any number of times (and any character)"
end

Given(/^V I have \$([0123456789]*) in my account$/) do |arg1|
  puts "\\$([0123456789]*) means: use any digit any number of times, but no decimals"
end

Given(/^VI I have \$([0-9]*) in my account$/) do |arg1|
  puts "\\$([0-9]*) means: the same as above"
end

Given(/^VII I have \$(\d*) in my account$/) do |arg1|
  puts "\$(\d*) means: the same as two above"
end

Given(/^VIII I have \$(\d+) in my account$/) do |arg1|
  puts "\$(\d*) means: the same as three above and nil value"
end

Given /I am (\w+) (\w+) here/ do |word1, word2|
puts "(\\w+) (\\w+) means: put there 2 words separately"
end

Given /I have (\d+) cucumbers? in my basket/ do |number|
puts "(\d+) cucumbers? means: get any number and eventually ignore 's' in 'cucumber'"
end