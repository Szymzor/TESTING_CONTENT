require 'watir-webdriver'
browser = Watir::Browser.start(:firefox)

Given /^I am on (.*)$/ do |page|
  browser.goto(page)
end


Then(/^I fill text field \(id: (.*)\) with "(.*?)"$/) do |id_text1, text|
  browser.text_field(id: id_text1).set(text)
end

Then(/^I check radio\-button with text "(.*?)"$/) do |radio1|
  browser.radio(value: radio1).set
end

Then(/^I tick checkbox with text "(.*?)"$/) do |checkb1|
  browser.checkbox(value: checkb1).set
end

Then(/^I choose "(.*?)" from drop\-down box \(id: (.*)\)$/) do |option_1, option_id|
  browser.select_list(id: option_id).select(option_1)
end

Then(/^I click button named "(.*?)"$/) do |button_name|
  browser.button(name: button_name).click
end

When(/^loaded page contains text "(.*?)", all my tests will turn green!$/) do |thanks_message|
  if browser.text.include?(thanks_message) == true
  	true
  else
  	false
  end
end
