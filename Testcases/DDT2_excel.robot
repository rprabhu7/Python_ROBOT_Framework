*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver    ../Data/invalid_usr_pwd.xlsx    sheet_name=Sheet1
Suite Setup    launchBrowser
Suite Teardown    Close Browsers
Test Template    Invalid Login
*** Test Cases ***
LoginTestwithExcel using ${username} and ${password}

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input Username   ${username}
    Input Password   ${password}
    click login Button
    Error Message Should Be Visible
