*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}    chrome
${url}    https://www.saucedemo.com/

*** Keywords ***
launchBrowser
    open browser     ${url}    ${browser}
    Maximize Browser Window
    ${title}=    Get Title

close Browsers
    Close All Browsers

open Login Page
    Go To    ${url}

Input Username
    [Arguments]    ${username}
    Input Text    id:user-name    ${username}
Input Password
    [Arguments]    ${password}
    Input Text    id:password    ${password}
click login Button
    Click Element    xpath://input[@id='login-button']
click logout link
    click element     xpath://button[@id='react-burger-menu-btn']
    Click Link    Logout
Error message should be visible
    Page Should Contain    Username and password do not match any user in this service
Dashboard page should be visible
    Page Should Contain    Swag Labs