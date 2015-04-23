class String
  # colorization
  def colorize(color_code)
   puts "\e[#{color_code}m#{self}\e[0m"
  end

  def red
    colorize(31)
  end

  def green
    colorize(32)
  end

  def yellow
    colorize(33)
  end

  def pink
    colorize(35)
  end
end

puts "GREEN".green
puts "RED".red
puts "YELLOW".yellow
puts "PINK".pink