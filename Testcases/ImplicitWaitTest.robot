*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
Registration Test
    #${implicit-time}    =   get selenium implicit wait
    #log to console  ${implicit-time}
    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window
    set selenium implicit wait  2seconds
    select radio button     Gender  M
    input text  name:FirstName1  test123    ##waits until 2 seconds to locate the element then it will timeout
    input text  name:LastName   test
    input text  name:Email  test.gdg@gmail.com
    input text  name:Password   Srigovinda7
    input text  name:ConfirmPassword    Srigovinda7
    click element   name:register-button
    #${implicit-time}    =   get selenium implicit wait
    #log to console  ${implicit-time}