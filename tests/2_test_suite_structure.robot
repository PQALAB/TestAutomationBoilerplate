*** Settings ***
Documentation   Demo test suite which tests the chromedriver website
Resource        ../resources/helper.robot
Suite Setup     setup.Default Setup
Suite Teardown  setup.Default Teardown


***Test Cases***
As a visitor I can access the chromedriver site
    Given I go to the chromedriver url
    Then the site loads

As a visitor I can search for articles
    Given I am on the chromedriver site
    When I search for a valid term using the search bar
    Then I see relavent results
    Sleep  10
