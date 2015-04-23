require 'test/unit/assertions'
include Test::Unit::Assertions

#No exception
assert true, noexc = "NO EXCEPTION RAISED :)"
puts noexc

#Exception raised
begin
	assert false, "EXCEPTION!!!"
rescue Exception => exception
	puts "Here Exception was raised: #{exception.class}"
end