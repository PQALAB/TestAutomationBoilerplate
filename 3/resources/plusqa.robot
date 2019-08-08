*** Keywords ***
Log Down Speed
    [Documentation]  Log the downspeed which is a rough measurement of 
    ...  the internet speed, as measured by the browser
    ${status}  ${down link}=  Run Keyword And Ignore Error  
    ...  Execute Javascript  return navigator.connection.downlink
    Set Suite Metadata  downlink (Mb/s)  ${down link}
    Log  downlink: ${down link} Mb/s

Click Element When Available
    [Documentation]     Click an element, but block action until it's available.
    [Arguments]         ${locator}      ${timeout}=10   ${error}=None
    Wait Until Element Is Visible  ${locator}  timeout=${timeout}   error=${error}
    Wait Until Element Is Enabled  ${locator}  timeout=${timeout}   error=${error} 
    Click Element  ${locator}

Scroll and Click Element
    [Documentation]     Scroll an element into view, then click it when it becomes available
    [Arguments]     ${locator}  ${overshoot}=0  ${timeout}=5
    Wait Until Page Contains Element  locator=${locator}  timeout=${timeout}
    Scroll Element Into View  ${locator}
    Execute Javascript  window.scrollBy(0, ${overshoot});
    Click Element  ${locator}

Scroll By Percent
    [Documentation]     Scroll page by percentage of the window size. Defaults to 80
    [Arguments]     ${y_value}=80
    ${y_value}=     Evaluate    (${y_value}/100)
    Execute Javascript  window.scrollBy(0, window.innerHeight * ${y_value});
