*** Settings ***
Documentation   Intro to robot framework
Library         SeleniumLibrary
Suite Setup     Open Browser  about:blank  browser=Chrome
Suite Teardown  Close Browser

*** Variables ***
${test site}  https://brew.sh/
${value props locator}  id:question

*** Test Cases ***
Open the site and take a screenshot
    [Documentation]  #TODO
    Go To  ${test site}
    Capture Page Screenshot
    Sleep  5
    Log  Took a screenshot of ${test site}

Verify the install command is on the front page
    [Documentation]  Open the test webpage, and verify the page loaded by 
    ...  locating an element on the page
    [Setup]  Go To  ${test site}
    Page Should Contain Element  id:selectable
    Element Should Contain  id:selectable  /usr/bin/ruby

Verify the value props section on the front page
    [Documentation]  Open the webpage, and verify the big question is present (value prop)
    [Setup]  Go To  ${test site}
    Scroll Element Into View  ${value props locator}
    Element Should Contain  ${value props locator}  What Does Homebrew Do?
    Scroll and Click Element  //a[@href="https://formulae.brew.sh/formula/"]

Verify the large HOMEBREW text links to the homepage
    [Documentation]  There is a large "HOMEBREW" title, verify the link to this
    ...  opens the homepage
    ...  Steps:
    ...  1. Open page
    ...  2. Find a locator for the homebrew title
    ...  3. use href to determine where that link directs to
    ...  4. create an assertion to verify that is homebrew.sh
    Pass Execution  not implemented, skipping

Verify the user can change the language using the selector
    [Documentation]  There is a language dropdown on the homepage. Verify that 
    ...  after the user changes the language the site changes languages
    ...  Steps:
    ...  1. Open page
    ...  2. Find a locator for the language selector
    ...  3. Select a language from that selector
    ...  4. Verify the page has changed language
    # Use one of these keywords to select from a list
    # Select From List By Value *
    # http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Select%20From%20List%20By%20Index
    [Setup]  Go To  ${test site}
    Page Should Contain Element  id:language
    Select From List  id:language  ja
    Page Should Contain  インストール
    Capture Page Screenshot


*** Keywords ***
Scroll and Click Element
    [Documentation]  Scroll to an element, then click it. 
    ...  Optionally add overshoot to scroll further
    [Arguments]  ${locator}  ${overshoot}=0
    Scroll Element Into View  ${locator}
    Execute Javascript  window.scrollBy({top: ${overshoot}, left: 0, behavior: 'smooth'})
    Click Element  ${locator}
