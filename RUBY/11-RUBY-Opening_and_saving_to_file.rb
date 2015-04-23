######### reading whole file ################################
  File.open("./a.txt") { |file|
    file.each { |line|
      content = line.gsub(/\n/,'')
      sleep(0.7)
      puts content
   }
}

 ############# reading whole file at once #####################
puts
puts "Inna metoda:\n \n"
filecontent = File.read('./a.txt')
puts filecontent

############### writing to file ##############################
abort()  ###aborted

puts
puts "Write file content"
File.write('./a.txt', (gets.chomp))