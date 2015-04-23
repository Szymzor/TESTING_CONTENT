Given(/^I can see this test is running$/) do 
 	if __FILE__ != $0
 		next
  	else
	  abort()
	end
end

When(/^file "(.*?)" exists$/) do |filename|
  raise("File \'#{filename}\' does not exist\n\n") unless File.exist?(filename)
end

And(/^I can acquire "(.*?)" variable from this file$/) do |variable|
  require './here_is_my_variable.rb'
  @variable = eval(variable)
  raise("Probably $var doesn\'t exist or it\'s name or .rb filename has been changed\n\n"
  	) unless @variable != nil
  #OR: expect(eval(@variable)).to_not equal(nil)
  #OR: eval(@variable).should_not == nil
end

Then(/^I can print it\'s value:$/) do
	puts @variable
end