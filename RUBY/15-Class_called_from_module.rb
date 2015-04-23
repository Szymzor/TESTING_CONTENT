class Klasa
  def initialize
    puts "Text from class"
  end
end

module Modul
  def method1
  	puts "Text from method"
    @method1 ||= Klasa.new   # this is used to avoid variable to be nil: @method1 || @method1 = Klasa.new
  end
end


include Modul
method1