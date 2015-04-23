#encoding: UTF-8
require "currency"
number = Transform /^(£|\$|€)(\d+)$/ do | currency_symbol, digits |
$digits = digits.to_i
$currency_symbol = currency_symbol
end


Given(/^I have (#{number})$/) do |arg1|
puts $currency_symbol
puts "#{$digits} (#{$digits.class})"
end

Then(/^I should not see (#{number})$/) do |arg1|
puts $currency_symbol
puts "#{$digits} (#{$digits.class})"
end