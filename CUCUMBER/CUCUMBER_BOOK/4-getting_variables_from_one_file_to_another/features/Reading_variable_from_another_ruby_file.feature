Feature: Using 'require' to get variable from another ruby file

Scenario: Printing variable's value from another file
  Given I can see this test is running
  When file "here_is_my_variable.rb" exists
  Then I can acquire "$var" variable from this file
  And I can print it's value:
