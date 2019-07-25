*** Settings ***
Documentation   Intro to robot framework
Resource        ../resources/helper.robot

*** Test Cases ***
Test Case 1
    [Documentation]  Test Cases are made up of keywords. 
    ...  Each line is a new keyword. If every keyword passes
    ...  then the test case passes.
    Should be Equal  1  1
    Should Not Be equal  1  2
    @{list}=  Create List  1  2  3  4
    Log To Console  ${list}
    Set Log Level  DEBUG

Test Case 2
    [Documentation]  Once a keyword fails the test case fails, 
    ...  and it is ended
    Should Be Equal  2  3
    Log  Test will never reach this line!

Test Case 3
    [Documentation]  Robotframework comes with many builtin keywords.
    ...  In addition, external keyword libraries can be used,
    ...  or you can write your own keyword
    My custom keyword
    My custom keyword  This is a custom keyword with arguments!

*** Keywords ***
My custom keyword
    [Documentation]  Demo of a custom keyword
    [Arguments]  ${message}=This is a custom keyword!
    Log  ${message}