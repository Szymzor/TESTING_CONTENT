Given /^I have authenticated with the correct PIN$/ do
steps %{
And I have pushed my card into the slot
And I enter my PIN
And I press "OK"
}
end




Given(/^I have pushed my card into the slot$/) do 
	puts "Card pushed into a slot"
end

Given(/^I enter my PIN$/) do
	puts "PIN entered"
end

Given(/^I press "(.*?)"$/) do |arg1|
	puts "I pressed #{arg1}"
end