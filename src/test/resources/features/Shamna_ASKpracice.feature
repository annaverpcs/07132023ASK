#Author ShamnaP
# ShamnaP

@asktest
Feature: ASK application testing

  @asktest1
  Scenario: Create and delete a Quiz
    Given I open url "http://ask-int.portnov.com/#/login"
    Then I should see page title contains "Assessment Control"
    And I type "testing@ucho.top" into element with xpath "//input[@formcontrolname='email']"
    And I type "Testing1!" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present

    # go to quizzes
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 2 sec

    #add quiz
    Then I type "QuizTest1 07132023" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon [contains (text (), 'add_circle')]"

    #select multiple choice quiz
    Then I click on element with xpath "//mat-radio-button[3]"
    And I wait for 2 sec
    Then I type "Single question name for quiz" into element with xpath "//textarea[@formcontrolname='question']"
    Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
    Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
    Then I click on element with xpath "//label[@for='mat-checkbox-2-input']/div"
    And I click on element with xpath "//span[contains(text (),'Save')]"

    #go back to list of quizzes
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    Then element with xpath "//mat-panel-title[contains (text (), 'QuizTest1 07132023')]" should contain text "QuizTest1 07132023"

    #delete quiz
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'QuizTest1 07132023')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'QuizTest1 07132023')]/../../..//button[@class='mat-raised-button mat-warn']"
    Then I click on element with xpath "//div[@class='mat-dialog-actions']//span[contains (text(),'Delete')]"
    And I wait for 3 sec
    Then element with xpath "//div[@class='mat-dialog-actions']//span[contains (text(),'Delete')]" should not be present