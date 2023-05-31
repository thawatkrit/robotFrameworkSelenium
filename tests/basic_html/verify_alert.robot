*** Settings ***
Library             Selenium2Library
Resource            ../../data/variables/imports.resource

Suite Teardown      Close All Browsers
Test Setup          Open browser to test page


*** Test Cases ***
Verify Accept Alert
    Handle Alert    action=ACCEPT

Verify Dismiss Alert
    Handle Alert    action=DISMISS


*** Keywords ***
Open browser to test page
    Open Browser    abut:blank    chrome
    Go To    ${GLOBAL_ENDPOINT_BASIC_HTML}
    Click Element    id:alert_confirm
    Sleep    2s
