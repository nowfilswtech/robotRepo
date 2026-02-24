*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://example.com
${BROWSER}    chrome

*** Keywords ***
Open Browser To Example
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    Example Domain

Close Browser Session
    Close Browser

*** Test Cases ***
Open Browser to Example
    Open Browser To Example
    [Teardown]    Close Browser Session

Verify Example Content
    Open Browser To Example
    Element Should Be Visible    xpath://h1[contains(text(),'Example Domain')]
    Element Should Contain       xpath://p    illustrative examples
    [Teardown]    Close Browser Session

Verify Example Content1
    Log To Console    Example Domain Test Executed Successfully