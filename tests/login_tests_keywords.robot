*** Settings ***
Resource    page_objects/login_page.robot
Resource    page_objects/secure_area_page.robot

*** Keywords ***
Should Display ${expected_message} Message
    ${actual_message}=    Get Successfull Login Message
    Should Contain    ${actual_message}    ${expected_message}

the user is on Login page
    Open Page    ${LOGIN_URL}

use valid credentials
    Enter a Valid User
    Enter a Valid Password

request to authenticate
    Submit Login Form

is given access to the home page
    Should Display You logged into a secure area! Message

reads the secure area access message
    Page URL Must Be    ${SECURE_AREA_URL}
