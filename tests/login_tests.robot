*** Settings ***
Documentation    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus sem non nisl vehicula, 
...              a gravida orci mattis. Duis ac fringilla dolor, eu aliquam nulla. Sed nec odio sagittis, lobortis sem sit amet, elementum tortor. Phasellus efficitur 
...              lorem ut quam convallis, dictum dignissim magna tincidunt. Nam urna tellus, rutrum at ligula ac, facilisis sodales ante. Quisque nec velit sed dui vehicula ultrices.
...              Praesent blandit urna vitae urna rhoncus consequat. Maecenas viverra purus quam, vitae venenatis magna iaculis vitae. Proin tellus lorem, suscipit eget dignissim quis, hendrerit ut purus.
...              Sed semper urna arcu. Sed in dui nisi. Cras ut urna et orci lacinia maximus. Donec non felis dapibus, consectetur ante at, posuere lacus.

Resource    keywords/global_keywords.robot
Resource    page_objects/login_page.robot
Resource    page_objects/secure_area_page.robot
Resource    login_tests_keywords.robot

*** Test Cases ***
Login with valid credentials
    [Documentation]    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus sem non nisl vehicula, 
    ...                a gravida orci mattis. Duis ac fringilla dolor, eu aliquam nulla. Sed nec odio sagittis, lobortis sem sit amet, elementum tortor. Phasellus efficitur 
    Open Page    ${LOGIN_URL}
    Enter a Valid User
    Enter a Valid Password
    Submit Login Form
    Should Display You logged into a secure area! Message
    Page URL Must Be    ${SECURE_AREA_URL}