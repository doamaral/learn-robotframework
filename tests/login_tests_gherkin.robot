*** Settings ***
Documentation    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus sem non nisl vehicula, 
...              a gravida orci mattis. Duis ac fringilla dolor, eu aliquam nulla. Sed nec odio sagittis, lobortis sem sit amet, elementum tortor. Phasellus efficitur 
...              lorem ut quam convallis, dictum dignissim magna tincidunt. Nam urna tellus, rutrum at ligula ac, facilisis sodales ante. Quisque nec velit sed dui vehicula ultrices.
...              Praesent blandit urna vitae urna rhoncus consequat. Maecenas viverra purus quam, vitae venenatis magna iaculis vitae. Proin tellus lorem, suscipit eget dignissim quis, hendrerit ut purus.
...              Sed semper urna arcu. Sed in dui nisi. Cras ut urna et orci lacinia maximus. Donec non felis dapibus, consectetur ante at, posuere lacus.

Resource    login_tests_keywords.robot

*** Test Cases ***
Login with valid credentials
    [Documentation]    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus sem non nisl vehicula, 
    ...                a gravida orci mattis. Duis ac fringilla dolor, eu aliquam nulla. Sed nec odio sagittis, lobortis sem sit amet, elementum tortor. Phasellus efficitur 
    Given the user is on Login page
    And use valid credentials
    When request to authenticate
    Then is given access to the home page
    And reads the secure area access message