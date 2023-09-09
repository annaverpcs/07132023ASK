# Author Quang T
# ASK071323-275

@testSet
Feature: Automate test set

  @test1
  Scenario: Verify status color of quizzes
    Given I open url "http://ask-int.portnov.com"
    And I type "qvtran92@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "Testing1234!" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//h5[contains(text(),'Submissions')]" to be present
    Then I click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then I click on element with xpath "//div[contains(text(), 'Reviewed')]"
    And QT I make sure that the "PASSED" and "FAILED" status are labeled with the correct colors
    And I wait for 4 sec

  @test2
  Scenario: Compare "Status" column values with quiz labels
    Given I open url "http://ask-int.portnov.com"
    And I type "qvtran92@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "Testing1234!" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//h5[contains(text(),'Submissions')]" to be present
    Then I click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then I click on element with xpath "//div[contains(text(), 'Reviewed')]"
    And I wait for element with xpath "//td[text()='SQA1']/..//span[contains(text(), 'Review')]" to be present
    And I click on element with xpath "//td[text()='SQA1']/..//span[contains(text(), 'Review')]"
    Then element with xpath "//div[contains(text(),'ASSESSMENT PASSED')]" should be present
    Then I wait for 4 sec

  @test3
  Scenario: Add "Points from Teacher" to quizzes that don't have perfect score

    






