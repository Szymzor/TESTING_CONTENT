text_file = File.read('./zadanie-tekst.txt')

splitted = text_file.split("o")

splitted.length

File.write('./result.txt', splitted)