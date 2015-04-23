Feature: Ignoring dollar symbol in cash operations
Scenario: Parse any symbol before cash amount

Given I've got $20
And I have €50 in my pocket
Then I cannot just add them and have ?70