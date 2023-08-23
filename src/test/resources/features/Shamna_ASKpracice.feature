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

    #add quizz
    Then I type "QuizTest11 07132023" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"

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
    Then element with xpath "//mat-panel-title[contains(text(), 'QuizTest11 07132023')]" should contain text "QuizTest11 07132023"

    #delete quiz
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'QuizTest11 07132023')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'QuizTest11 07132023')]/../../..//button[@class='mat-raised-button mat-warn']"
    Then I click on element with xpath "//div[@class='mat-dialog-actions']//span[contains (text(),'Delete')]"

    And I wait for 3 sec
    Then element with xpath "//mat-panel-title[contains(text(), 'QuizTest11 07132023')]" should not be present

  @asktest2
  Scenario: Student registration
   Given I open url "http://ask-int.portnov.com/#/registration"
    Then I type "Tomy" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "Lukai" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "test00@gkqil.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "123" into element with xpath "//input[@formcontrolname='group']"
    Then I type "12345" into element with xpath "//input[@formcontrolname='password']"
    Then I type "12345" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[contains(text(),'Register Me')]"
    And I wait for element with xpath "//h4[contains(text(),'You have been Registered.')]" to be present

  #Activate the user
  Then SP retrieve information from db for email "test00@gkqil.com"
  Then SP activate the user
  Then SP retrieve information from db for email "test00@gkqil.com"

  #login as a user
  @asktest3
  Scenario: Student login
    Given I open url "http://ask-int.portnov.com/#/login"
    Then I should see page title contains "Assessment Control"
    And I type "test00@gkqil.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "12345" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present

  @asktest4
  Scenario: Student registration using ShamnaPStepDefs
#    Given I open url "http://ask-int.portnov.com/#/registration"
    Given SP open page "Registration"
    Then SP type "Tomyi" to field "firstName"
    Then SP type "Soy" to field "lastName"
    Then SP type "tom14@gmail.com" to field "email"
    Then SP type "123" to field "group"
    Then SP type "12345" to field "password"
    Then SP type "12345" to field "confirmPassword"
    Then SP click on button "RegisterMe"
    And I wait for element with xpath "//h4[contains(text(),'You have been Registered.')]" to be present

    #Activate the user
    Then SP retrieve information from db for email "tom14@gmail.com"
    Then SP activate the user
    Then SP retrieve information from db for email "tom14@gmail.com"

  @asktest5
  Scenario Outline: Student registration using ShamnaPStepDefs Data Driven Scenario
    Given SP open page "Registration"
    Then SP type <sfirstName> to field "firstName"
    Then SP type <slastName> to field "lastName"
    Then SP type <sEmail> to field "email"
    Then SP type <sGroup> to field "group"
    Then SP type <sPassword> to field "password"
    Then SP type <sConfirmPassword> to field "confirmPassword"
    Then SP click on button "RegisterMe"
    And I wait for element with xpath "//h4[contains(text(),'You have been Registered.')]" to be present
    Then SP retrieve information from db for email <sEmailAddress>
    Then SP activate the user
    Then SP retrieve information from db for email <sEmailAddress>
    Examples:
      | sfirstName    | slastName  | sEmail            | sGroup | sPassword   | sConfirmPassword |sEmailAddress     |
      | "Tomyi"       | "Soy"      | "tom105@gmail.com" | "123"  | "12345"     |"12345"            | "tom105@gmail.com"|
      | "123"       | "2@@"      | "tom101@gmail.com" | "123"  | "12345"     |"12345"            | "tom101@gmail.com"|
      | "omyi"       | "oyS"      | "tom102@gmail.com" | "123"  | "12345"     |"123456"            | "tom102@gmail.com"|
      | "Tomyi"       | "Soy"      | "tom103@gmail.com" | ""  | "12345"     |"12345"            | "tom103@gmail.com"|



