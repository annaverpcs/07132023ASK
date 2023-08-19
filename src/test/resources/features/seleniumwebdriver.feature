# Author: Quang T
# ASK071323-311
@webdriver
Feature: practice with Selenium WebDriver methods

  @webdriver1
  Scenario: Open webpage and explore its property
    # Given I open url "https://www.google.com/"
    Given QT navigate to URL "Google"
    Then QT get page information
    Then QT type "Behavior Driven Development" into the search bar
