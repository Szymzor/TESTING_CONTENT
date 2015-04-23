require 'java'
 

java.lang.System.out.println("Hello World") 
message = 'Some text goes here'


frame = javax.swing.JFrame.new
frame.getContentPane.add javax.swing.JLabel.new("#{message}")
frame.setDefaultCloseOperation javax.swing.JFrame::EXIT_ON_CLOSE
frame.pack
frame.set_visible true