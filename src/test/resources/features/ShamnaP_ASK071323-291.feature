#Author ShamnaP
#Test set (ASK071323-85)

@asktest
Feature: Timestamp verification

<<<<<<< HEAD:src/test/resources/features/Shamna_ASKpracice.feature
  @asktest1 @regression
  Scenario: Create and delete a Quiz
=======
  @ASK071323-85
  Scenario: Updated At Timestamp  for new quiz
>>>>>>> master:src/test/resources/features/ShamnaP_ASK071323-291.feature
    Given I open url "http://ask-int.portnov.com/#/login"
    Then I should see page title contains "Assessment Control"
    And I type "testing@ucho.top" into element with xpath "//input[@formcontrolname='email']"
    And I type "Testing1!" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present

    #go to quizzes
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 2 sec

    #add quiz
    Then I type "ShamQuiz01 07132023" into element with xpath "//input[@formcontrolname='name']"
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
    Then element with xpath "//mat-panel-title[contains (text (), 'ShamQuiz01 07132023')]" should contain text "ShamQuiz01 07132023"

    #Checks if the "Updated At" text is present in the mat-card
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'ShamQuiz01 07132023')]"
    Then element with xpath "//mat-panel-title[contains(text(), 'ShamQuiz01 07132023')]/../../..//tr[5]/td[1]" should contain text ""


#  #Updated At Timestamp verification
#  @asktest2
#  Scenario: Timestamp Verification Using ShamnaPStepdefs
#    Given a user is selecting a quiz from list of Quizzes
#    When the user checks the "Updated At" timestamp
#    Then the timestamp should match the current date and time

