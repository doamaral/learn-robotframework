*** Settings ***
Resource    ../../page_objects/secure_area_page.robot

*** Keywords ***
Should Display ${expected_message} Message
    ${actual_message}=    Get Successfull Login Message
    Should Contain    ${actual_message}    ${expected_message}   