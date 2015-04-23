Given(/^a "(.*?)" widget with the following details:$/) do |arg1|
	arg1
step "I create a #{arg1} widget with the following details:"
steps %{
And I register the #{arg1} widget
And I activate the #{arg1} widget
}





end

Given(/^I create a BUTTON widget with the following details:$/) do
puts "1 nested step"
end

Given(/^I register the BUTTON widget$/) do
	puts "2 nested step"
end

Given(/^I activate the BUTTON widget$/) do
	puts "3 nested step"
end
