*** Settings ***
Library    SeleniumLibrary
Resource   ../keywords/global_keywords.robot
*** Variables ***
${SECURE_AREA_URL}         ${BASE_URL}/secure
${SUCCESS_MESSAGE_BOX}     flash
${LOGOUT_BUTTON}           Logout

*** Keywords ***
Get Successfull Login Message
    ${text}=    Get Text    ${SUCCESS_MESSAGE_BOX}
    [Return]    ${text}