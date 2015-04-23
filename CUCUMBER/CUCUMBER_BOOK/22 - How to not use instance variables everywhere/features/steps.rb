class Klasa
  def metoda_pierwsza
    zmienna1 = 1
  end
end


module Modul
  def funkcja_1
    @funkcja_1 ||= Klasa.new  #works only if variable is named like a function
  end
end




include Modul
funkcja_1

[1,1,1,1].each do |amount|
  puts funkcja_1.metoda_pierwsza  #so You don't have to put "@" before variable
end