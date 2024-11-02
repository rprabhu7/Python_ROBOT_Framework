*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    launchBrowser
Suite Teardown    Close Browsers
Test Template    Invalid Login
*** Test Cases ***        username        password
#Right User Empty pwd    standard_user    ${EMPTY}
Right User wrong pwd    standard_user    xyz
wrong user right pwd    admin            secret_sauce
wrong user Empty pwd    admin            ${EMPTY}
wrong user wrong pwd    admin            xyz




*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input Username   ${username}
    Input Password   ${password}
    click login Button
    Error Message Should Be Visible
