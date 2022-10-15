*** Settings ***
Library    SeleniumLibrary
Resource   ../keywords/global_keywords.robot
*** Variables ***
${LOGIN_URL}         ${BASE_URL}/login
${LOGIN_FIELD}       id:username
${PASSWORD_FIELD}    name:password
${SUBMIT_BUTTON}     Localizador do Botão de Submit

*** Keywords ***
Enter a Valid User
    Input Text    ${LOGIN_FIELD}    tomsmith
Enter a Valid Password
    Input Text    ${PASSWORD_FIELD}    SuperSecretPassword!
Submit Login Form
    Click Button    Login