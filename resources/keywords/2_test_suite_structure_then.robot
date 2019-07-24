*** Settings ***
Resource  ../helper.robot

*** Keywords ***
Then the site loads
    Wait Until Page Contains Element  //*[@id="sites-chrome-userheader-title"]

Then I see relavent results
    ${showing results}=  Get Text  //*[@id="sites-showing-results"]
    # text will say something like "Showing 1 - 3 results for canary"
    Should Contain  ${showing results}  Showing 1

Then I see a message letting me know there are no results
    ${showing results}=  Get Text  //*[@class="sites-search-noresults"]
    # text will say something like "Your search for "nick" did not match any pages."
    Should Contain  ${showing results}  did not match any pages.
