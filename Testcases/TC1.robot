*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com/

*** Test Cases ***
LoginTest
    Open Browser     ${url}     ${browser}
    loginToApplication
    close browser
*** Keywords ***
loginToApplication
    Input Text  id:user-name    standard_user
    Input Text  id:password     secret_sauce
    click element   xpath://input[@id='login-button']




