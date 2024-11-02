*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com/
${expected_title}   Swag Labs

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     ${expected_title}
    ${"username_txt"}   set variable    id:user-name
    element should be visible   ${"username_txt"}
    element should be enabled   ${"username_txt"}
    input text   ${"username_txt"}  standard_user
    Sleep   5
    clear element text  ${"username_txt"}
    Sleep   3
    close browser
*** Keywords ***

