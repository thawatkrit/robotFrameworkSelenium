*** Settings ***
Library    Selenium2Library
Resource    ../../data/variables/imports.resource

Test Template    Custom Test Template
Suite Teardown    Close All Browsers


*** Test Cases ***                              EMAIL                        PASSWORD
Verify Login With Worng Email                   test@qahive.com              123456789
Verify Login With Worng Password                demo@qahive.com              123456
Verify Login With Worng Empty Data              ${Empty}                     ${Empty}
Verify Login With Worng Email And Password      test@qahive.com              123456

*** Keywords ***
Custom Test Template
    [Arguments]  ${email}  ${password}
    Open Browser    abut:blank    chrome
    Go To    ${GLOBAL_ENDPOINT_LOGIN} 
    Input Text    id:exampleInputEmail1   ${email}
    Input Text    id:exampleInputPassword1   ${password}
    Click Element    id:exampleCheck1
    Click Element    css:button.btn.btn-primary
    Switch Window    NEW
    Wait Until Page Contains    Error Page