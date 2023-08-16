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
    
    And I wait for 5 sec

