*** Settings ***
Resource  ../helper.robot

*** Keywords ***
When I search for a valid term using the search bar
    [Documentation]  Make a search which should show results
    Input Text  //*[@id="jot-ui-searchInput"]  canary
    Click Element  //*[@id="sites-searchbox-search-button"]
