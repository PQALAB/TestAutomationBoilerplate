*** Settings ***
Resource  ../helper.robot

*** Keywords ***
# As a guest I can open the photo gallery
Given I am on a homes PDP 
    Go To  https://www.airbnb.com/rooms/1238125?

When I click the photo gallery
    Wait Until Page Contains Element  //*[@data-veloute="hero-view-photos-button"]
    Click Element  //*[@data-veloute="hero-view-photos-button"]

Then the gallery opens
    Wait Until Page Contains Element  //*[@data-veloute="slideshow-modal"]
    Capture Page Screenshot  

And I can scroll through photos
    [Documentation]  Get the URL of the current image, then click the button, then verify the
    ...  new url is different
    ${starter image url}=  Get Element Attribute  //*[@data-veloute="slideshow-image"]  src
    Capture Page Screenshot  
    Log  ${starter image url}
    Click Element  //*[@data-veloute="slideshow-modal"]
    ${second image url}=  Get Element Attribute  //*[@data-veloute="slideshow-image"]  src
    Capture Page Screenshot  
    Log  ${second image url}
    Should Not Be Equal  ${starter image url}  ${second image url}

