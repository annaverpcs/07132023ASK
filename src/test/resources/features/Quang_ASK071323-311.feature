# Author Quang T

@asktest
Feature: ASK application testing

  @asktest1
  Scenario: Create and delete a Quiz
    Given I open url "http://ask-int.portnov.com/#/login"
    Then I should see page title contains "Assessment Control"
    And I type "qvtran92@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "Testing1234!" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
    # go to Quizzes
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 1 sec

    # add quiz
    Then I type "001 Test1 07132023" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//mat-icon[contains"