*** Settings ***
Library    SeleniumLibrary
Resource    ./page_objects/robot_doc.robot

Suite Setup    Open Browser    https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html    gc
Suite Teardown    Close All Browsers

*** Test Cases ***
Abrir google e pesquisar sobre robot
    Wait Until Robot Page Loads
    ${text}=    Get header title text
    Should Be Equal    ${text}    SeleniumLibrary