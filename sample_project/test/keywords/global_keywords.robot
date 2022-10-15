*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${DEFAULT_BROWSER}     Chrome
${BASE_URL}            https://the-internet.herokuapp.com 

*** Keywords ***
Open Page
    [Arguments]    ${url}
    Open Browser    ${url}    ${DEFAULT_BROWSER}

Page URL Must Be
    [Arguments]    ${expected_url}
    ${current_url}    Get Location
    Should Be Equal    ${expected_url}    ${current_url}
    