characters = "abcde"
size_of_array = characters.length
arr_of_char = characters.split('')

a0 = 0 
a1 = 0
a2 = 0
a3 = 0
a4 = 0



for i in 1..3125
array = [a4, a3, a2, a1, a0]


a0 +=1

if a0 > 4
  a0 = 0
  a1 += 1
end

if a1 > 4
  a1 = 0
  a2 += 1
end

if a2 > 4
  a2 = 0
  a3 += 1
end

if a3 > 4
  a3 = 0
  a4 += 1
end






a = array.to_s
a = a.gsub("0","a")
a = a.gsub("1","b")
a = a.gsub("2","c")
a = a.gsub("3","d")
a = a.gsub("4","e")
a = a.gsub(/[ ,]/, "")
a = a.gsub("]", "")
a = a.gsub("[", "")
print "#{a}\n"


end

