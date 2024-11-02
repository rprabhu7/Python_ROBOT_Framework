*** Settings ***
Library     SeleniumLibrary
Variables    ../PageObjects/locators.py

*** Keywords ***
Open My Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    open browser     ${SiteUrl}    ${Browser}
    Maximize Browser Window
    ${title}=    Get Title

close Browsers
    Close All Browsers

#open Login Page
#    Go To    ${url}

Input Username
    [Arguments]    ${username}
    Input Text    ${txt_loginUserName}   ${username}
Input Password
    [Arguments]    ${password}
    Input Text    ${txt_loginPassword}    ${password}
click login Button
    Click Element    ${btn_login}
click logout link
    click element  ${btn_menu_bar}
    Click Link    ${link_logout}
Error message should be visible
    Page Should Contain    Username and password do not match any user in this service
Verify Successful Login
    Page Should Contain    Swag Labs