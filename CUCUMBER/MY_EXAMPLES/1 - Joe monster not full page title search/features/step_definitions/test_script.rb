require 'rspec'
require "watir-webdriver"

BROWSER = Watir::Browser.start(:firefox)


Given /^that I am on (.*)$/ do |page|
  BROWSER.goto(page)
end

When /^I click on link (.*)$/ do |link|
  BROWSER.link(:text, link).click
end

Then /^the page title should be "([^"]*)"$/ do |title|
  BROWSER.title.include?(title).should == true
end