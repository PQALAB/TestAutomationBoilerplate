*** Settings ***
Documentation   Demo test suite which tests the chromedriver website
Resource        ../resources/helper.robot
Suite Setup     setup.Default Setup
Suite Teardown  setup.Default Teardown

*** Test Cases ***
As a guest I can open the photo gallery
    [Documentation]  Go to a homes PDP as a guest, open
    ...  the gallery
    Given I am on a homes PDP 
    When I click the photo gallery
    Then the gallery opens
    And I can scroll through photos
