*** Settings ***
Library    Selenium2Library
Resource    ../../data/variables/imports.resource

Test Template    Custom Test Template
Suite Teardown    Close All Browsers


*** Test Cases ***                              EMAIL                  PASSWORD       ADDRESS          ADDRESS2          CITY          STATE      ZIP
Verify Register All Data                        register@qahive.com    123456789      testAddress      testAddress2      testCity      1          12123

*** Keywords ***
Custom Test Template
    [Arguments]  ${email}  ${password}    ${address}    ${address2}    ${city}    ${state}    ${zip}
    Open Browser    abut:blank    chrome
    Go To    ${GLOBAL_ENDPOINT_REGISTER} 
    Input Text    id:inputEmail4   ${email}
    Input Text    id:inputPassword4   ${password}
    Input Text    id:inputAddress   ${address}
    Input Text    id:inputAddress2   ${address2}
    Input Text    id:inputCity   ${city}
    Select From List By Value    id:inputState   ${state}
    Input Text    id:inputZip   ${zip}
    Click Element    css:button.btn.btn-primary