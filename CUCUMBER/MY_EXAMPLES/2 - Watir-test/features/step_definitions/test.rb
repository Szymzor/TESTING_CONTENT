require "watir-webdriver"

browser = Watir::Browser.start(:firefox)

Given /^being on page (.*)$/ do |page|
  browser.goto(page)
end

When /^found text field id (.*) type here my name "([^"]*)"$/ do |text_field_id, my_name|
  browser.text_field(id: text_field_id).set(my_name)
end



Then(/^wait (\d+) seconds$/) do |seconds|
  sleep(seconds.to_i)
end

Then(/^close browser$/) do
  browser.close()
end