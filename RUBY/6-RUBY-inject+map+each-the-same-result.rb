##################### inject #modifies arr1#########
arr1 = ['a','b','c']
arr1.inject(0) {|first, nexxt| puts ("#{nexxt}#")}
puts

##################### map #creates new object########
arr2 = ['a','b','c']
arr2.map {|y| puts ("#{y}#")} 
puts

##################### each ##########################
arr3 = ['a','b','c']
arr3.each {|z| puts ("#{z}#")}
puts