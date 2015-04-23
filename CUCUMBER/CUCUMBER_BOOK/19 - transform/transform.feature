Feature: Transform example
Scenario: Grab any numerical value in the scenario and transform it into integer
Given I have 30
When I add 20 to it
Then I should get 50