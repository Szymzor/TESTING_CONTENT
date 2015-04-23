Then /^I press imageview number (\d+)$/ do |number|
	#booking.com map button - 3
	#TTL map button - 2
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