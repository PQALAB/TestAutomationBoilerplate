*** Settings ***
Resource  ../helper.robot

*** Keywords ***
When I search for a valid term using the search bar
    [Documentation]  Make a search which should show results
    Input Text  //*[@id="jot-ui-searchInput"]  canary
    Click Element  //*[@id="sites-searchbox-search-button"]

When I search for an invalid term using the search bar
    [Documentation]  Make a search which should show no results
    Input Text  //*[@id="jot-ui-searchInput"]  nick
    Click Element  //*[@id="sites-searchbox-search-button"]
