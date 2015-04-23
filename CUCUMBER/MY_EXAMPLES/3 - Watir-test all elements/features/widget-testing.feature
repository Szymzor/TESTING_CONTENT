Feature:
Typing in two text fields and checking some checkboxes

Scenario:
Given I am on https://docs.google.com/forms/d/1MuRN3iOw3zR28RxPrEZfYKGDNiZMTtnOewknASdTxt0/viewform?formkey=dDliTk5XU1R4RUMtb2c1WDZxWHNENmc6MQ&hl=en#gid=0

Then I fill text field (id: entry_1000000) with "Sample text"
Then I fill text field (id: entry_1000001) with "Another text"
Then I check radio-button with text "Watir"
Then I tick checkbox with text "Ruby"
Then I choose "Firefox" from drop-down box (id: entry_1000004)
Then I click button named "submit"
When loaded page contains text "Thanks", all my tests will turn green!
