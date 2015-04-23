class Account
	def deposit(amount)
	end
end

Given /^I have deposited \$(\d+) in my account$/ do |amount|
	my_account = Account.new
	my_account.deposit(amount.to_i)
end

When /^I request \$(\d+)$/ do |arg1|
end

Then /^\$(\d+) should be dispensed$/ do |arg1|
end