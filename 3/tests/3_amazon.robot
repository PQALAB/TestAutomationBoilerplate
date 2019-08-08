*** Settings ***
Documentation   Demo test suite which tests the chromedriver website
Resource        ../resources/helper.robot
Suite Setup     setup.Default Setup
Suite Teardown  setup.Default Teardown


***Test Cases***
As a user I can search the site for a loofa and see accurate results
    [Documentation]  Using gherkin style, verify that searching the 
    ...  amazon site for a loofa and verify
    ...  that a real loofa appears in results
    Fail  msg=Not yet implemented
