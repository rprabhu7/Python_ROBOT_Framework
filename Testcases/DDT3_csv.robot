*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver    ../Data/user.csv    sheet_name=Sheet1
Suite Setup    launchBrowser
Suite Teardown    Close Browsers
Test Template    Invalid Login
*** Test Cases ***
LoginTestwithCsv using ${username} and ${password}

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input Username   ${username}
    Input Password   ${password}
    click login Button
    Error Message Should Be Visible
