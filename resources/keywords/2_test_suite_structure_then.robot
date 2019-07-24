*** Settings ***
Resource  ../helper.robot

*** Keywords ***
Then the site loads
    Wait Until Page Contains Element  //*[@id="sites-chrome-userheader-title"]

Then I see relavent results
    ${showing results text}=  Get Text  //*[@id="sites-showing-results"]
    Log To Console  ${showing results text}
