Feature:
-Try text field Widget on Watir Example webpage

Scenario:

Given being on page https://docs.google.com/forms/d/1MuRN3iOw3zR28RxPrEZfYKGDNiZMTtnOewknASdTxt0/viewform?formkey=dDliTk5XU1R4RUMtb2c1WDZxWHNENmc6MQ&hl=en#gid=0

When found text field id entry_1000000 type here my name "Szymon"
Then wait 1 seconds
Then close browser
