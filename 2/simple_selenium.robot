*** Settings ***
Documentation   Intro to robot framework
Library         SeleniumLibrary
Suite Setup     Open Browser  about:blank  browser=Chrome
Suite Teardown  Close Browser

*** Variables ***
${test site}  https://brew.sh/
${value props locator}  id:question

*** Test Cases ***
Open the site and take a picture
    Go To  ${test site}
    Capture Page Screenshot
    Sleep  5
    Log  Took a screenshot of ${test site}

Verify the install command is on the front page
    [Setup]  Go To  ${test site}
    Page Should Contain Element  id:selectable
    Element Should Contain  id:selectable  /usr/bin/ruby

Verify the value props section on the front page
    [Setup]  Go To  ${test site}
    Scroll Element Into View  ${value props locator}
    Element Should Contain  ${value props locator}  What Does Homebrew Do?
    Scroll and Click Element  //a[@href="https://formulae.brew.sh/formula/"]

*** Keywords ***
Scroll and Click Element
    [Documentation]  Scroll to an element, then click it. 
    ...  Optionally add overshoot to scroll further
    [Arguments]  ${locator}  ${overshoot}=0
    Scroll Element Into View  ${locator}
    Execute Javascript  window.scrollBy({top: ${overshoot}, left: 0, behavior: 'smooth'})
    Click Element  ${locator}
