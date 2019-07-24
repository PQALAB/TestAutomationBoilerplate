*** Settings ***
Resource    helper.robot

*** Keywords ***
Open local browser
    [Documentation]  Open a chrome browser on the local machine
    SeleniumLibrary.Open Browser  about:blank  browser=chrome  
    ...  alias=None  remote_url=False  desired_capabilities=None  
    ...  ff_profile_dir=None

Default Setup
    Open local browser
    Log Down Speed
    Set Selenium Speed  0.5

Default Teardown
    [Documentation]  Default teardown. Disconnects browser so BS knows when to stop the session.
    Close Browser
