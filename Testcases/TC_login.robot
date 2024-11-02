*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/loginkeywords.robot
*** Variables ***
${Browser}    headlesschrome
${SiteUrl}    https://www.saucedemo.com/
${usr}        standard_user
${pwd}        secret_sauce
*** Test Cases ***
LoginTest
    Open My Browser    ${SiteUrl}     ${Browser}
    Input Username    ${usr} 
    Input Password    ${pwd}
    click login Button
    sleep     3
    Verify Successful Login
    sleep    3
    Close Browsers