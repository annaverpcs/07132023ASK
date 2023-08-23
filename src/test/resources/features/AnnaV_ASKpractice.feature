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


  @asktest2
  Scenario: Student registration
    Given I open url "http://ask-int.portnov.com/#/registration"
    Then I type "Marry" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "Poppins" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "mary@poppins.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "123" into element with xpath "//input[@formcontrolname='group']"
    Then I type "12345ABc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "12345ABc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[contains(text(),'Register Me')]"
    And I wait for element with xpath "//h4[contains(text(),'You have been Registered.')]" to be present
    #Activate the user
    Then AV retrieve information from db for email "mary@poppins.com"
    Then AV activate the user
    Then AV retrieve information from db for email "mary@poppins.com"

  @asktest3
  Scenario: Student registration using AnnaVerStepDefs
    #Given I open url "http://ask-int.portnov.com/#/registration"
    Given AV open page "Registration"
    Then AV type "Tom" to field "firstName"
    Then AV type "Sawyer" to field "lastName"
    Then AV type "tom@Sawyer.com" to field "email"
    Then AV type "234" to field "group"
    Then AV type "12345" to field "password"
    Then AV type "12345" to field "confirmPassword"
    Then AV click on button "RegisterMe"
    And I wait for element with xpath "//h4[contains(text(),'You have been Registered.')]" to be present
    #Activate the user
    Then AV retrieve information from db for email "tom@Sawyer.com"
    Then AV activate the user
    Then AV retrieve information from db for email "tom@Sawyer.com"

  @asktest3
  Scenario Outline: Student  registration  using  AnnaVerStepDefs  Data  driven  scenario
    Given AV open page "Registration"
    Then AV type <sFirstName> to field "firstName"
    Then AV type <sLastName> to field "lastName"
    Then AV type <sEmail> to field "email"
    Then AV type <sGroup> to field "group"
    Then AV type <sPassword> to field "password"
    Then AV type <sConfirmPassword> to field "confirmPassword"
    Then AV click on button "RegisterMe"
    And I wait for element with xpath "//h4[contains(text(),'You have been Registered.')]" to be present
    Then AV retrieve information from db for email <sEmailAddress>
    Then AV activate the user
    Then AV retrieve information from db for email <sEmailAddress>
    Examples:
      | sFirstName | sLastName   |  sEmail          |  sGroup |  sPassword  | sConfirmPassword | sEmailAddress    |
      | "Tom" | "Sawyer"         | "tom1@Sawyer.com" |  "234"  |  "12345"   |"12345"     |  "tom@Sawyer.com" |
      | "123" | "#^&*"         | "tom2@Sawyer.com" |  "234"  |  "12345"   |"12345"     |  "tom2@Sawyer.com" |
      | "Tom" | "Sawyer"         | "tom3@Sawyer.com" |  "234"  |  "12345"   |"123456"     |  "tom3@Sawyer.com" |
      | "Tom" | "Sawyer"         | "tom1@Sawyer.com" |  " "  |  "12345"   |"12345"     |  "tom4@Sawyer.com" |


