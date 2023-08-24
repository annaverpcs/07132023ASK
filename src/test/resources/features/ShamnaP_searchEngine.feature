@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//*[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//*[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Behavior Driven Development"

  @Duckduckgo
  Scenario: Steps for Duckduckgo
    Given I open url "https://duckduckgo.com/"
    Then I should see page title as "DuckDuckGo — Privacy, simplified."
    Then element with xpath "//input[@id='searchbox_input']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='searchbox_input']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@id='react-layout']" to be present
    Then element with xpath "//div[@id='react-layout']" should contain text "Behavior Driven Development"

  @swisscows
  Scenario: Steps for swisscows
    Given I open url "https://swisscows.com/"
    Then I should see page title as "Your private and anonymous search engine Swisscows"
    Then element with xpath "//input[@type='search']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@type='search']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='web-results']" to be present
    Then element with xpath "//div[@class='web-results']" should contain text "Behavior Driven Development"

  @searchencrypt
  Scenario: Search Engine for https://www.searchencrypt.com/
    Given I open url "https://www.searchencrypt.com/"
    Then I should see page title as "Search Encrypt | Home"
    Then element with xpath "//input[@class='search-bar__search']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@class='search-bar__search']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@id='app']" to be present
    Then I wait for 10 sec
    Then element with xpath "//div[@id='app']" should contain text "Cucumber"

  @Startpage
  Scenario: Steps for Startpage
    Given I open url "https://www.startpage.com/"
    Then I should see page title as "Startpage - Private Search Engine. No Tracking. No Search History."
    Then I wait for element with xpath "//div[@aria-label='animation']" to be present
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behaviour Driven Development" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//button[@id='search-btn']"
    Then I wait for element with xpath "//div[@class='layout-web__mainline']" to be present
    Then element with xpath "//div[@class='layout-web__mainline']" should contain text "Cucumber"
    Then element with xpath "//*[contains(text(),'Behaviour-Driven Development - Cucumber Documentation')]" should contain text "Cucumber"

  @Ecosia
  Scenario: Steps for Ecocia
    Given I open url "https://www.ecosia.org/"
    Then I should see page title as "Ecosia - the search engine that plants trees"
    Then I wait for element with xpath "//div[@data-test-id='search-form-search-field']" to be present
    When I type "Behaviour Driven Development" into element with xpath "//input[@data-test-id='search-form-input']"
    Then I click on element with xpath "//button[@data-test-id='search-form-submit']"
    Then I wait for element with xpath "//div[@data-test-id='layout-content']" to be present
    Then element with xpath "//div[@data-test-id='layout-content']" should contain text "cucumber"

  @Wiki
  Scenario: Steps for Wiki
    Given I open url "https://www.wiki.com/"
    Then I should see page title as "Wiki.com"
    Then I wait for element with xpath "//input[@name='q']" to be present
    When I type "Automation" into element with xpath "//input[@name='q']"
    Then I click on element with xpath "//input[@name='btnG']"
    Then element with xpath "//*[@class='insecure-form']" should be displayed

  @giveWater
  Scenario: Steps for giveWater
    Given I open url "https://www.givewater.com/"
    Then I should see page title contains "giveWater"
    Then I wait for element with xpath "//input[@id='site-search']" to be present
    Then I wait for element with xpath "//div[@class='pum-content popmake-content']" to be present
    When I click on element with xpath "//*[@class='pum-close popmake-close']"
    When I type "Environment" into element with xpath "//input[@id='site-search']"
    Then I click on element with xpath "//button[@class='btn-search']"
    Then I wait for element with xpath "//div[@class='mainline-results mainline-results__web']" to be present
    Then element with xpath "//div[@class='mainline-results mainline-results__web']" should contain text "Environment"

  @Ecoru
  Scenario: Search steps for Ecoru
    Given I open url "https://ekoru.org/"
    Then I should see page title as "Ekoru - every search cleans our oceans"
    Then I wait for element with xpath "//input[@id='fld_q']" to be present
    When I type "Automation" into element with xpath "//input[@id='fld_q']"
    Then I click on element with xpath "//div[@id='btn_search']"
    Then I wait for element with xpath "//div[@id='div_results']" to be present
    And I wait for 5 sec
    Then element with xpath "//div[@id='div_results']" should contain text "Automation"

  @Gibiru
  Scenario: Search Engine for http://gibiru.com
    Given I open url "http://gibiru.com"
    Then I should see page title contains "Gibiru"
    Then element with xpath "//input[@id='q']" should be present
    Then I type "Automation" into element with xpath "//input[@id='q']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@id='web-results']" to be present
    Then element with xpath "//div[@id='web-results']" should contain text "Automation"