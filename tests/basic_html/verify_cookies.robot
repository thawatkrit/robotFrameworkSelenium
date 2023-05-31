*** Settings ***
Library             Selenium2Library
Resource            ../../data/variables/imports.resource

Suite Teardown      Close All Browsers
Test Setup          Open browser to test page


*** Test Cases ***
Add cookie
    Add Cookie    Test    1111
    ${cookies} =    Get Cookies
    Should Be Equal As Strings    Test=1111    ${cookies}

Delete all cookies
    Delete All Cookies
    ${cookies} =    Get Cookies
    Should Be Empty    ${cookies}


*** Keywords ***
Open browser to test page
    Open Browser    abut:blank    chrome
    Go To    ${GLOBAL_ENDPOINT_BASIC_HTML}
