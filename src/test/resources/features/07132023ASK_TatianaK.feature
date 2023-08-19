#Author TatianaK
#Test set ASK071323-44

@ASK071323-44
Feature: Smoke test for test set ASK071323-44

  @ASK071323-48
  Scenario: Verify user can use Alphanumeric $ special characters as full name
    #login as teacher
    Given I open url "http://ask-qa.portnov.com/#/login"
    Then I wait for element with xpath "//img[@class='center-logo']" to be present
    Then I should see page title contains "Assessment Control"
    When I type "g7k3l6f8@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "Testing1!" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    #navigate to user's management
    Then I wait for element with xpath "//img[@class='icon ng-star-inserted']" to be present
    And I wait for element with xpath "//mat-list[@class='mat-list']" to be present
    When I click on element with xpath "//h5[contains(text(),'Users Management')]"
    #navigate to change user's name
    Then I wait for element with xpath "//mat-card[@class='page mat-card']" to be present
    And I wait for 3 sec
    When I click on element using JavaScript with xpath "//a[@href='/#/user-details/10935']"
    Then I wait for element with xpath "//button[@class='mat-raised-button mat-accent']" to be present
    And I wait for 3 sec
    When I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
    Then I wait for element with xpath "//div[@role='menu']" to be present
    When I click on element using JavaScript with xpath "//div[@role='menu']//button[1]"
    #change user's name
    Then I wait for element with xpath "//mat-dialog-container[@role='dialog']" to be present
    Then element with xpath "//h1" should contain text " Name"
    Then I clear element with xpath "//input[@placeholder='Full Name']"
    When I type "DC123 CD!@#" into element with xpath "//input[@placeholder='Full Name']"
    Then I click on element with xpath "//span[contains(text(),'Change')]"
    #verify user's name was changed
    Then I wait for element with xpath "//mat-card[@class='page mat-card ng-star-inserted']" to be present
    #I am struggling with verifying
    #Then element with xpath "//h2" should contain text "DC123 CD!@#"


  @ASK071323-51
  Scenario: Verify user cannot have full name input field empty
    #login as teacher
    Given I open url "http://ask-qa.portnov.com/#/login"
    Then I wait for element with xpath "//img[@class='center-logo']" to be present
    Then I should see page title contains "Assessment Control"
    When I type "g7k3l6f8@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "Testing1!" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    #navigate to user's management
    Then I wait for element with xpath "//img[@class='icon ng-star-inserted']" to be present
    And I wait for element with xpath "//mat-list[@class='mat-list']" to be present
    When I click on element with xpath "//h5[contains(text(),'Users Management')]"
    #navigate to change user's name
    Then I wait for element with xpath "//mat-card[@class='page mat-card']" to be present
    And I wait for 3 sec
    When I click on element using JavaScript with xpath "//a[@href='/#/user-details/10935']"
    Then I wait for element with xpath "//button[@class='mat-raised-button mat-accent']" to be present
    And I wait for 3 sec
    When I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
    Then I wait for element with xpath "//div[@role='menu']" to be present
    When I click on element using JavaScript with xpath "//div[@role='menu']//button[1]"
    #change user's name
    Then I wait for element with xpath "//mat-dialog-container[@role='dialog']" to be present
    Then element with xpath "//h1" should contain text " Name"
    Then I clear element with xpath "//input[@placeholder='Full Name']"
    Then I click on element with xpath "//span[contains(text(),'Change')]"
    Then element with xpath "//mat-error[text()='This field is required']" should be present


  @ASK071323-52
  Scenario:Verify user can enter max 256 characters as full name
    #login as teacher
    Given I open url "http://ask-qa.portnov.com/#/login"
    Then I wait for element with xpath "//img[@class='center-logo']" to be present
    Then I should see page title contains "Assessment Control"
    When I type "g7k3l6f8@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "Testing1!" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    #navigate to user's management
    Then I wait for element with xpath "//img[@class='icon ng-star-inserted']" to be present
    And I wait for element with xpath "//mat-list[@class='mat-list']" to be present
    When I click on element with xpath "//h5[contains(text(),'Users Management')]"
    #navigate to change user's name
    Then I wait for element with xpath "//mat-card[@class='page mat-card']" to be present
    And I wait for 3 sec
    When I click on element using JavaScript with xpath "//a[@href='/#/user-details/10935']"
    Then I wait for element with xpath "//button[@class='mat-raised-button mat-accent']" to be present
    And I wait for 3 sec
    When I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
    Then I wait for element with xpath "//div[@role='menu']" to be present
    When I click on element using JavaScript with xpath "//div[@role='menu']//button[1]"
    #change user's name
    Then I wait for element with xpath "//mat-dialog-container[@role='dialog']" to be present
    Then element with xpath "//h1" should contain text " Name"
    Then I clear element with xpath "//input[@placeholder='Full Name']"
    When I type "qwertyuiopasdfghjklzxcvbnm1234567890!@#$%&()!@#$%&()1234567890qwertyuiopasdfghjklzxcvbnm1234567890!@#$%&()QWERTYUIOOOOOOOOOOOOOPASDFGHJKLZXCVBNM qwertyuiopasdfghjklzxcvbnm12345678901234567890!@#$%&()!@#$%&()!@#$%&()12345678901234567891234567890" into element with xpath "//input[@placeholder='Full Name']"
    Then I click on element with xpath "//span[contains(text(),'Change')]"
    #verify user's name was changed
    Then I wait for element with xpath "//mat-card[@class='page mat-card ng-star-inserted']" to be present
    #Then element with xpath "//h2" should contain text "qwertyuiopasdfghjklzxcvbnm1234567890!@#$%&()!@#$%&()1234567890qwertyuiopasdfghjklzxcvbnm1234567890!@#$%&()QWERTYUIOOOOOOOOOOOOOPASDFGHJKLZXCVBNM qwertyuiopasdfghjklzxcvbnm12345678901234567890!@#$%&()!@#$%&()!@#$%&()12345678901234567891234567890"


  @ASK071323-178
  Scenario:Verify user cannot enter 257 characters as full name
    #login as teacher
    Given I open url "http://ask-qa.portnov.com/#/login"
    Then I wait for element with xpath "//img[@class='center-logo']" to be present
    Then I should see page title contains "Assessment Control"
    When I type "g7k3l6f8@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "Testing1!" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    #navigate to user's management
    Then I wait for element with xpath "//img[@class='icon ng-star-inserted']" to be present
    And I wait for element with xpath "//mat-list[@class='mat-list']" to be present
    When I click on element with xpath "//h5[contains(text(),'Users Management')]"
    #navigate to change user's name
    Then I wait for element with xpath "//mat-card[@class='page mat-card']" to be present
    And I wait for 3 sec
    When I click on element using JavaScript with xpath "//a[@href='/#/user-details/10935']"
    Then I wait for element with xpath "//button[@class='mat-raised-button mat-accent']" to be present
    And I wait for 3 sec
    When I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
    Then I wait for element with xpath "//div[@role='menu']" to be present
    When I click on element using JavaScript with xpath "//div[@role='menu']//button[1]"
    #change user's name
    Then I wait for element with xpath "//mat-dialog-container[@role='dialog']" to be present
    Then element with xpath "//h1" should contain text " Name"
    Then I clear element with xpath "//input[@placeholder='Full Name']"
    When I type "qwertyuiopasdfghjklzxcvbnm1234567890!@#$%&()!@#$%&()1234567890qwertyuiopasdfghjklzxcvbnm1234567890!@#$%&()QWERTYUIOOOOOOOOOOOOOPASDFGHJKLZXCVBNM qwertyuiopasdfghjklzxcvbnm12345678901234567890!@#$%&()!@#$%&()!@#$%&()123456789012345678912345678901" into element with xpath "//input[@placeholder='Full Name']"
    Then I click on element with xpath "//span[contains(text(),'Change')]"
    Then element with xpath "//mat-error[contains(text(),' no more ')]" should be present


  @ASK071323-53
  Scenario:Verify user can enter min 2 characters as full name
    #login as teacher
    Given I open url "http://ask-qa.portnov.com/#/login"
    Then I wait for element with xpath "//img[@class='center-logo']" to be present
    Then I should see page title contains "Assessment Control"
    When I type "g7k3l6f8@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "Testing1!" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    #navigate to user's management
    Then I wait for element with xpath "//img[@class='icon ng-star-inserted']" to be present
    And I wait for element with xpath "//mat-list[@class='mat-list']" to be present
    When I click on element with xpath "//h5[contains(text(),'Users Management')]"
    #navigate to change user's name
    Then I wait for element with xpath "//mat-card[@class='page mat-card']" to be present
    And I wait for 3 sec
    When I click on element using JavaScript with xpath "//a[@href='/#/user-details/10935']"
    Then I wait for element with xpath "//button[@class='mat-raised-button mat-accent']" to be present
    And I wait for 3 sec
    When I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
    Then I wait for element with xpath "//div[@role='menu']" to be present
    When I click on element using JavaScript with xpath "//div[@role='menu']//button[1]"
    #change user's name
    Then I wait for element with xpath "//mat-dialog-container[@role='dialog']" to be present
    Then element with xpath "//h1" should contain text " Name"
    Then I clear element with xpath "//input[@placeholder='Full Name']"
    When I type "z z" into element with xpath "//input[@placeholder='Full Name']"
    Then I click on element with xpath "//span[contains(text(),'Change')]"
    #verify user's name was changed
    Then I wait for element with xpath "//mat-card[@class='page mat-card ng-star-inserted']" to be present
    #Then element with xpath "//h2" should contain text "z z"


  @ASK071323-54
  Scenario:Verify user cannot have trailing spaces in full name
    #login as teacher
    Given I open url "http://ask-qa.portnov.com/#/login"
    Then I wait for element with xpath "//img[@class='center-logo']" to be present
    Then I should see page title contains "Assessment Control"
    When I type "g7k3l6f8@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "Testing1!" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    #navigate to user's management
    Then I wait for element with xpath "//img[@class='icon ng-star-inserted']" to be present
    And I wait for element with xpath "//mat-list[@class='mat-list']" to be present
    When I click on element with xpath "//h5[contains(text(),'Users Management')]"
    #navigate to change user's name
    Then I wait for element with xpath "//mat-card[@class='page mat-card']" to be present
    And I wait for 3 sec
    When I click on element using JavaScript with xpath "//a[@href='/#/user-details/10935']"
    Then I wait for element with xpath "//button[@class='mat-raised-button mat-accent']" to be present
    And I wait for 3 sec
    When I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
    Then I wait for element with xpath "//div[@role='menu']" to be present
    When I click on element using JavaScript with xpath "//div[@role='menu']//button[1]"
    #change user's name
    Then I wait for element with xpath "//mat-dialog-container[@role='dialog']" to be present
    Then element with xpath "//h1" should contain text " Name"
    Then I clear element with xpath "//input[@placeholder='Full Name']"
    When I type "Z " into element with xpath "//input[@placeholder='Full Name']"
    Then I click on element with xpath "//span[contains(text(),'Change')]"
    Then element with xpath "//mat-error" should be present



  @ASK071323-55
  Scenario:Verify user cannot have white space as full name
    #login as teacher
    Given I open url "http://ask-qa.portnov.com/#/login"
    Then I wait for element with xpath "//img[@class='center-logo']" to be present
    Then I should see page title contains "Assessment Control"
    When I type "g7k3l6f8@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "Testing1!" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    #navigate to user's management
    Then I wait for element with xpath "//img[@class='icon ng-star-inserted']" to be present
    And I wait for element with xpath "//mat-list[@class='mat-list']" to be present
    When I click on element with xpath "//h5[contains(text(),'Users Management')]"
    #navigate to change user's name
    Then I wait for element with xpath "//mat-card[@class='page mat-card']" to be present
    And I wait for 3 sec
    When I click on element using JavaScript with xpath "//a[@href='/#/user-details/10935']"
    Then I wait for element with xpath "//button[@class='mat-raised-button mat-accent']" to be present
    And I wait for 3 sec
    When I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
    Then I wait for element with xpath "//div[@role='menu']" to be present
    When I click on element using JavaScript with xpath "//div[@role='menu']//button[1]"
    #change user's name
    Then I wait for element with xpath "//mat-dialog-container[@role='dialog']" to be present
    Then element with xpath "//h1" should contain text " Name"
    Then I clear element with xpath "//input[@placeholder='Full Name']"
    When I type " " into element with xpath "//input[@placeholder='Full Name']"
    Then I click on element with xpath "//span[contains(text(),'Change')]"
    Then element with xpath "//mat-error" should be present


  @ASK071323-179
  Scenario:Verify user cannot have leading space in full name
    #login as teacher
    Given I open url "http://ask-qa.portnov.com/#/login"
    Then I wait for element with xpath "//img[@class='center-logo']" to be present
    Then I should see page title contains "Assessment Control"
    When I type "g7k3l6f8@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "Testing1!" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    #navigate to user's management
    Then I wait for element with xpath "//img[@class='icon ng-star-inserted']" to be present
    And I wait for element with xpath "//mat-list[@class='mat-list']" to be present
    When I click on element with xpath "//h5[contains(text(),'Users Management')]"
    #navigate to change user's name
    Then I wait for element with xpath "//mat-card[@class='page mat-card']" to be present
    And I wait for 3 sec
    When I click on element using JavaScript with xpath "//a[@href='/#/user-details/10935']"
    Then I wait for element with xpath "//button[@class='mat-raised-button mat-accent']" to be present
    And I wait for 3 sec
    When I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
    Then I wait for element with xpath "//div[@role='menu']" to be present
    When I click on element using JavaScript with xpath "//div[@role='menu']//button[1]"
    #change user's name
    Then I wait for element with xpath "//mat-dialog-container[@role='dialog']" to be present
    Then element with xpath "//h1" should contain text " Name"
    Then I clear element with xpath "//input[@placeholder='Full Name']"
    When I type " Z" into element with xpath "//input[@placeholder='Full Name']"
    Then I click on element with xpath "//span[contains(text(),'Change')]"
    Then element with xpath "//mat-error" should be present