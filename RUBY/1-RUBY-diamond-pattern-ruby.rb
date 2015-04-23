multiplier = 100
for z in 1...multiplier

count = 20
i = 20
space = 1
for x in 1..i
  count.times {print " #"; sleep (0.01)}
  print "\n"
  space.times {print " "}
  space += 1
  count -= 1
end

space = 19

for y in 0..i
  count.times {print " #"; sleep (0.01) }
  print "\n"
  space.times {print " "}
  space -= 1
  count += 1
end

end