*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${HEADER_TITLE}    css:.libdoc-title>h1

*** Keywords ***
Wait Until Robot Page Loads
    Wait Until Element Is Visible    ${HEADER_TITLE}
Get header title text
    ${title_text}=    Get Text    ${HEADER_TITLE}
    [Return]    ${title_text}    
    