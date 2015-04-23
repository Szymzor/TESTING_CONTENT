Given(/^I know current dir:$/) do
  #puts "#{File.dirname(__FILE__)}"
  $current_pwd = File.expand_path("../", Dir.pwd)
  $current_pwd =  $current_pwd.insert(0,'\"')+'\"'
end

Then(/^I want to use Bundler to install any needed gems$/) do
  system('cd #{$current_pwd}')
  system("pwd")
  system("bundle")
end
