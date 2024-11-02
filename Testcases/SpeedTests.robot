*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
Registration Test
    #${spead}    =   get selenium speed
    #log to console  ${spead}
    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window
    set selenium speed  1seconds
    select radio button     Gender  M
    input text  name:FirstName  test123
    input text  name:LastName   test
    input text  name:Email  test.gdg@gmail.com
    input text  name:Password   Srigovinda7
    input text  name:ConfirmPassword    Srigovinda7
    click element   name:register-button
    #${spead}    =   get selenium speed
    #log to console ${spead}