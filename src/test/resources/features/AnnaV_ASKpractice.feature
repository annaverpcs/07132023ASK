#Author AnnaV

@asktest  
Feature: ASK application testing
  
  @asktest1
  Scenario: Create and delete a Quiz
    Given  I open url "http://ask-int.portnov.com/#/login"
    Then I should see page title contains "Assessment Control"
    And I type "annapcsteacher2@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "12345ABc" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
    # go to Quizzes
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 1 sec
    #add quizz
  Then I type "001 Test1 07132023" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    #select Multiple  Choice Quiz
  Then I click on element with xpath "//mat-radio-button[3]"
    Then I type "Question 1" into element with xpath "//textarea[@formcontrolname='question']"
    Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
    Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
    Then I click on element with xpath "//label[@for='mat-checkbox-2-input']/div"
  Then I click on element with xpath "//span[contains(text(),'Save')]"
    #go back to list of quizzes
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      Then element with xpath "//mat-panel-title[contains(text(),'001 Test1 07132023')]" should contain text "001 Test1 07132023"
    #delete the quiz
    Then I click on element with xpath "//mat-panel-title[contains(text(),'001 Test1 07132023')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'001 Test1 07132023')]/../../..//button[@class='mat-raised-button mat-warn']"
    And I click on element with xpath "//div[@class='mat-dialog-actions']//span[contains(text(),'Delete')]"
    And I wait for 2 sec
    Then element with xpath "//mat-panel-title[contains(text(),'001 Test1 07132023')]" should not be present




    And I wait for 5 sec
    




