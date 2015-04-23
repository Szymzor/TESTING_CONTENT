# MiniTest
require 'test/unit'
include Test::Unit::Assertions
puts "\e[31mERROR 1: RUN ABORTED\e[0m"
assert_equal 'green', 'cucumber'



# RSpec
require 'rspec/expectations'
puts "\e[31mERROR 2: RUN ABORTED\e[0m"
"green".should == "cucumber"


=begin
# Wrong
require 'wrong'
include Wrong
puts "\e[31mERROR 3: RUN ABORTED\e[0m"
assert { 'green' == 'cucumber' }
=end