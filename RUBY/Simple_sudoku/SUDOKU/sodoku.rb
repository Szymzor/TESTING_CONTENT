str="""
+-------+-------+-------+
| _ 6 _ | 1 _ 4 | _ 5 _ |
| _ _ 8 | 3 _ 5 | 6 _ _ |
| 2 _ _ | _ _ _ | _ _ 1 |
+-------+-------+-------+
| 8 _ _ | 4 _ 7 | _ _ 6 |
| _ _ 6 | _ _ _ | 3 _ _ |
| 7 _ _ | 9 _ 1 | _ _ 4 |
+-------+-------+-------+
| 5 _ _ | _ _ _ | _ _ 2 |
| _ _ 7 | 2 _ 6 | 9 _ _ |
| _ 4 _ | 5 _ 8 | _ 7 _ |
+-------+-------+-------+
"""

$a = ""


str.each_line do |line|    #do the instructions below for every line



       line.delete! '|+-'  #deletes these characters from line


       line.tr! '_', '0'   #works like gsub!


       line.squeeze!       #removes character repetition "aaa".squeeze! => "a"

       line.strip!         #removes whitespaces


$a<<line

    end

puts $a