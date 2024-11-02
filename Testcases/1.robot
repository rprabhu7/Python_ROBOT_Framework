*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://www.saucedemo.com
${browser}    chrome
*** Test Cases ***
TC1
  open my browser
    
*** Keywords ***
open my browser
        open browser ${url} ${browser}
        click element     xpath:
        ${handles}=    Get Window Handles
        Switch Window    ${handles[-1]}
        ${text}=    Get Text    xpath:
        Should Be Equal As Strings    ${text}    expected_value
        Select From List By Value    xpath:      value 
        FOR     ${i} in range 1 4
            ${text}=    Get Text    xpath:
            Exit For Loop If    ${text} != NULL
        END
        