*** Settings ***
Resource  ../helper.robot

*** Keywords ***
Given I go to the chromedriver url
    Go To  http://chromedriver.chromium.org/
    Capture Page Screenshot  

Given I am on the chromedriver site
    Go To  http://chromedriver.chromium.org/
