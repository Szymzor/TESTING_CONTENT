Given(/^I got (\d+)$/) do |arg1|
$var1 = arg1
end

Given(/^(\d+)$/) do |arg1|
$var2 = arg1
end

Then(/^I should get (\d+)$/) do |arg1|
$var3 = $var1+$var2
end
