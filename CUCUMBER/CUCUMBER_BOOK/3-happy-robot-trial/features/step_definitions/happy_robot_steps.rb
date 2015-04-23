Given(/^the robot types "(.*?)"$/) do |cucumberGetDataFromFeature|
 puts cucumberGetDataFromFeature
 show_ruby_file_text = `ruby happy_robot.rb #{$robot_text}`
 puts show_ruby_file_text

end

When(/^you type keyword "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I will show up "(.*?)" text$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

