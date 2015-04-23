Feature: Login feature

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
	