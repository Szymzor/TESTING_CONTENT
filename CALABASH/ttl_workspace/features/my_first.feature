Feature: Login feature
  @t1
  Scenario: Running fresh app
	Then I press button number 1
	Then I press "Continue without logging in"
	Then I press "New journey"
	Then I press button number 1
	Then I enter "London" into input field number 1
	Then I wait for 1 seconds
	Then I wait for progress
	Then I wait for 1 seconds
	Then I press list item number 2
	Then I press button number 2
	Then I enter "West Ham" into input field number 1
	Then I wait for 1 seconds
	Then I wait for progress
	Then I wait for 1 seconds
	Then I press list item number 2
	
	
	
  @tag
  Scenario: Assert UI elements
	Then I wait for 4 seconds
	Then I press button number 1
	Then I wait for 4 seconds
	Then I press "Continue without logging in"
	Then I press "New journey" 
	Then I take a screenshot
	Then I press button number 1
	Then I enter "London" into input field number 1
	Then I take a screenshot
	Then I wait for 1 seconds
	Then I wait for progress
	Then I wait for 1 seconds
	Then I press list item number 2
	Then the view with id "find_fares_btn_from" should have property "text" = "London"
	Then I press button number 2
	Then I enter "West Ham" into input field number 1
	Then I wait for 1 seconds
	Then I wait for progress
	Then I wait for 1 seconds
	Then I press list item number 2
	Then I take a screenshot
	Then the view with id "find_fares_btn_to" should have property "text" = "West Ham"
	Then I press "today"
	Given I set the date to "25-08-2013" on DatePicker with index "1"
	Then I press "Done"
	Then I take a screenshot
	Then the view with id "find_fares_btn_date" should have property "text" = "25 Aug 13"
	Then I press "Find trains"
	Then I wait for progress
	Then I press view with id "trip_button"
	Then I press list item number 1
	Then I press "Register"
	Then I take a screenshot
	Then I toggle checkbox number 1
	Then I take a screenshot
	
	
@mapTag	
Scenario: Handle maps
	When I press button number 1
	Then I press "Continue without logging in"
	Then I press "New journey"
	Then I press button number 1
	Then I press imageview number 2
	Then I click on screen 50% from the left and 55% from the top
	Then I wait for 3 seconds
	Then take picture
	Then I am at 50.5, -1.0
	Then I wait for 3 seconds
	Then take picture
	Then I set the map zoom level to 15
	When I centre the map at "51.528709", "0.005323"
	Then take picture
	Then I click on screen 50% from the left and 55% from the top
	Then take picture
	Then I press "West Ham"
	Then the view with id "find_fares_btn_from" should have property "text" = "West Ham"
	 

@login
Scenario: Login
	When I press button number 1
	Then I press view with id "home_login_enter_email"
	Then I enter "test@mobica.com" into input field number 1
	Then I press view with id "home_login_enter_password"
	Then I enter "password" into input field number 2
	Then I press "Log in"

@mySteps
Scenario:My step
	When I press button number 1
	When I login as "$testUser.getEmail" and I enter password "$testUser.getPassword"
	 
@raiseStep
Scenario: Use raise method
	Then I wait for 6 seconds
	When I enter "blalblabla" to use query function

@results
Scenario: I check search results
	Then I press button number 1
	Then I press "Continue without logging in"
	Then I press "New journey"
	Then I press button number 1
	Then I enter "London" into input field number 1
	Then I wait for 1 seconds
	Then I wait for progress
	Then I wait for 1 seconds
	Then I press list item number 2
	Then I press button number 2
	Then I enter "West Ham" into input field number 1
	Then I wait for 1 seconds
	Then I wait for progress
	Then I wait for 1 seconds
	Then I press list item number 2
	
	Then I press "Find trains"	
	Then I wait for progress
	Then I should see results from "London" to "West Ham"

@selenium	
Scenario: I check price from website
	Then I press button number 1
	Then I press "Continue without logging in"
	Then I press "New journey"
	Then I press button number 1
	Then I enter "London" into input field number 1
	Then I wait for 1 seconds
	Then I wait for progress
	Then I wait for 1 seconds
	Then I press list item number 2
	Then I press button number 2
	Then I enter "West Ham" into input field number 1
	Then I wait for 1 seconds
	Then I wait for progress
	Then I wait for 1 seconds
	Then I press list item number 2
	
	Then I press "today"
	Given I set the date to "20-09-2013" on DatePicker with index "1"
	Then I press "Done"
	
	Then I press "Find trains"	
	Then I wait for progress
	Then I wait for 3 seconds
	Then I compare price with price on website