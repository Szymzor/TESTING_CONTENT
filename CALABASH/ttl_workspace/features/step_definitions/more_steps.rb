require 'rubygems'
require 'selenium-webdriver' 

 Then /^I press imageview number (\d+)$/ do |number|
	#booking.com map button - 3
	#TTL map button - 2
	
	#touch(query('*')[5])
	performAction('wait',3)
	touch(query('ImageView')[number])
  end
  
 When /^I centre the map at "([^\"]*)", "([^\"]*)"$/ do | lat, lon |
  performAction('set_map_center', lat.to_f, lon.to_f)
end 

When /^I set the map zoom level to (\d+)$/ do | zoom |
  performAction('set_map_zoom', zoom)
  sleep(0.2)
end
  
  Then /^I login$/ do

	  performAction('enter_text_into_id_field', "adam.ajdamiak@mobica.com", "home_login_enter_email")
      performAction('click_on_view_by_id', 'home_login_enter_password')
      performAction('enter_text_into_id_field', "mobica", "home_login_enter_password")
      performAction('wait', 5)
      performAction('click_on_view_by_id', 'home_login_btn')
      macro "I wait for progress"
  end
  
  When /^I login as "([^\"]*)" and I enter password "([^\"]*)"$/ do |emailTest, passwdTest|
	  email = eval(emailTest)
	  passwd = eval(passwdTest)
	  
	  performAction('enter_text_into_id_field', email, "home_login_enter_email")
      performAction('click_on_view_by_id', 'home_login_enter_password')
      performAction('enter_text_into_id_field', passwd, "home_login_enter_password")
      performAction('wait', 5)
      performAction('click_on_view_by_id', 'home_login_btn')
      macro "I wait for progress"
  end
  
  When /^I enter "([^\"]*)" to use query function$/ do |text|
	performAction('wait',5)
        elementsArray = query("TextView")
        unless(elementsArray[0]["text"].include? text)
            raise "Text not found"
		end
end

Then /^I should see results from "([^\"]*)" to "([^\"]*)"$/ do |from, to|
	performAction('wait',5)
	
	macro("I handle exception")
	
	query("TextView id:'trip_arrival_station_name'").each do |x|
		unless x["text"].include? from 
			raise 'Origin station is not correct'
		end
	end
	
	query("TextView id:'trip_departure_station_name'").each do |x|
		unless x["text"].include? to 
			raise 'Destination station is not correct'
		end
	end
end

Then /^I handle exception$/ do
    begin
        performAction("press", "aaaa")
    rescue Exception => e
        raise "Neither element contain this text"
    end
end


def getPricefromWebSite(origin, destination, time, date)

  driver = Selenium::WebDriver.for :firefox
  driver.get "https://www.testthetrainline.com/"
   
  currentTime = time
  
  element = driver.find_element :id => 'OriginStation'
  element.send_keys origin

  element = driver.find_element :id => 'DestinationStation'
  element.send_keys destination
  
  dateWebFormat = date.strftime('%d/%m/%y')
  dateElement = driver.find_element(:id => 'outwardDate')
  dateElement.clear
  dateElement.send_keys dateWebFormat
  dateElement.send_key :escape 
  
  hours = driver.find_element(:id,'OutwardHour')
  minutes = driver.find_element(:id, 'OutwardMinute')
  
  options = hours.find_elements(:tag_name=>'option')
  options.each do |g|
    if g.text == currentTime.hour.to_s
      g.click
      break
    end
  end
  
  if currentTime.min >=0 && currentTime.min <15
    min = '0'
  elsif currentTime.min >=15 && currentTime.min <30
    min = '15'
  elsif currentTime.min >=30 && currentTime.min <60
    min = '30'
  else
    min = '45'
  end

  options = minutes.find_elements(:tag_name=>'option')
  options.each do |g|
    if g.text == min
      g.click
      break
    end
  end

  
  button = driver.find_element(:id => 'TimeTableWithMatrixButton')
  button.click


  wait = Selenium::WebDriver::Wait.new(:timeout => 15)
  begin
    element = wait.until { driver.find_element(:id => "showTicketsIdButton") }

    element.click
    #element.click
   
    elements  = driver.find_elements(:class => 'matrixPrice')
    price = elements.first.text
    
    path = "./logs/selenium" + Random.rand(100000).to_s + ".png"
    driver.save_screenshot(path)
    embed(File.basename(path), "image/png", File.basename(path))
  ensure
    driver.quit
  end
  
  return price
end


Then /^I compare price with price on website$/ do
  priceFromWebsite = getPricefromWebSite("London", "West Ham", $testTime1, $testDate1)
  performAction('assert_text',priceFromWebsite, true)
end