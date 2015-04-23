class Klasa
	def initialize
		puts "Text from class"
	end
end

module Modul
	def method1
		puts "This module method works"
	end

	def method2
		puts "Another module method works"
	end
end


World{Klasa.new}
World(Modul)


Given(/^I have a module and I want to run it like this:$/) do
self.method1
self.method2
end

Given(/^text from a class can't be attached to a step$/) do
  pending
end




