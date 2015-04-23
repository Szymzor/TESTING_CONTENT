Feature: Website Navigation
  In order to navigate website pages
  I am able to click on menu item

Scenario:
  Given that I am on http://joemonster.org/
  When I click on link Galeria
  Then the page title should be "Joe Monste"
