    #puts "#{File.dirname(__FILE__)}"

  $current_pwd = File.expand_path("../", Dir.pwd)
  $current_pwd =  $current_pwd.insert(0,'\"')+'\"'
  system("echo #{$current_pwd}")
  system('cd #{$current_pwd}')   #this rather not work
  system("pwd")
  #system('cd #{File.expand_path("", Dir.pwd)}')