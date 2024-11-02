*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
Registration Test
    #${default-timeout}    =   get selenium timeout
    #log to console  ${default-timeout}
    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window
    set selenium timeout    10seconds
    wait until page contains    Register        ##default maximum timeout is 5secs, since it is set to 10sec, it will wait for 10secs
    #set selenium speed  1seconds
    select radio button     Gender  M
    input text  name:FirstName  test123
    input text  name:LastName   test
    input text  name:Email  test.gdg@gmail.com
    input text  name:Password   Srigovinda7
    input text  name:ConfirmPassword    Srigovinda7
    click element   name:register-button
    #${default-timeout}    =   get selenium timeout
    #log to console  ${default-timeout}
