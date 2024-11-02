*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
launchBrowser
    [Arguments]    ${appurl}    ${appbrowser}
    open browser     ${appurl}    ${appbrowser}
    Maximize Browser Window
    ${title}=    Get Title
    [RETURN]    ${title}