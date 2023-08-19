#Author TatianaK
#Test set ASK071323-44

  @ASK071323-44
  Feature: Smoke test for test set ASK071323-44

    @ASK071323-48
    Scenario: Verify user can use Alphanumeric $ special characters as full name
      #login as teacher
      Given I open url "http://ask-qa.portnov.com/#/login"
      Then element with xpath "//img[@class='center-logo']" should be present
      Then I should see page title contains "Assessment Control"
      When I type "g7k3l6f8@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      And I type "Testing1!" into element with xpath "//input[@formcontrolname='password']"
      Then I click on element with xpath "//button[@type='submit']"
      #navigate to user's management
      Then I wait for element with xpath "//img[@class='icon ng-star-inserted']" to be present
      And I wait for element with xpath "//mat-list[@class='mat-list']" to be present
      When I click on element with xpath "//h5[contains(text(),'Users Management')]"
      #Change user's name
      Then I wait for element with xpath "//mat-card[@class='page mat-card']" to be present
      And I wait for 2 sec
      When I click on element using JavaScript with xpath "//a[@href='/#/user-details/10935']"
      Then I wait for element with xpath "//button[@class='mat-raised-button mat-accent']" to be present
      And I wait for 5 sec
      Then I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
      Then I wait for element with xpath "//div[@role='menu']" to be present
      When I click on element using JavaScript with xpath "(//mat-icon[text()='edit'])[2]"
      Then I wait for element with xpath "//h1[contains(text(),'Change Your Name')]" to be present
      When I clear element with xpath "//input[@placeholder='Full Name']"
      Then I type "DC123 CD!@#" into element with xpath "//input[@placeholder='Full Name']"
      Then I click on element with xpath "//span[contains(text(),'Change')]"
      #verify user's name was changed
      Then I wait for element with xpath "//mat-card[@class='page mat-card ng-star-inserted']" to be present
      #i am struggling with
      Then element with xpath "//h2" should contain text ""


    @ASK071323-51
    Scenario: Verify user cannot have full name input field empty
      #login as teacher
      Given I open url "http://ask-qa.portnov.com/#/login"
      Then element with xpath "//img[@class='center-logo']" should be present
      Then I should see page title contains "Assessment Control"
      When I type "g7k3l6f8@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      And I type "Testing1!" into element with xpath "//input[@formcontrolname='password']"
      Then I click on element with xpath "//button[@type='submit']"
      #navigate to user's management
      Then I wait for element with xpath "//img[@class='icon ng-star-inserted']" to be present
      And I wait for element with xpath "//mat-list[@class='mat-list']" to be present
      When I click on element with xpath "//h5[contains(text(),'Users Management')]"
      #Change user's name
      Then I wait for element with xpath "//mat-card[@class='page mat-card']" to be present
      And I wait for 2 sec
      When I click on element using JavaScript with xpath "//a[@href='/#/user-details/10935']"
      Then I wait for element with xpath "//mat-card[@class='page mat-card ng-star-inserted']" to be present
      Then I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
      Then I wait for element with xpath "//div[@role='menu']" to be present
      When I click on element with xpath "(//mat-icon[text()='edit'])[2]"
      Then I wait for element with xpath "//h1[contains(text(),'Change Your Name')]" to be present
      When I clear element with xpath "//input[@placeholder='Full Name']"
      Then I click on element with xpath "//span[contains(text(),'Change')]"
      Then element with xpath "//mat-error[contains(text(),'required')]" should be present