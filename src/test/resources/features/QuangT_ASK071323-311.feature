# Author: Quang T
# ASK071323-311

@searchEngine
Feature: Automate search for different search engines

  @searchEngine1
  Scenario: Open webpage and explore its property
    Given QT navigate to URL "Google"
    Then QT get page information
    Then QT type "Behavior Driven Development" into the "Google search bar"
    Then QT press Enter
    Then QT I wait for the search results to be present
    Then QT the search results should contain the word "Cucumber"
    Then I wait for 4 sec
