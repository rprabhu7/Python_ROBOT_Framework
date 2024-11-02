*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resources.robot        #importing user defined method file
*** Variables ***
${browser}    chrome
${url}     https://www.saucedemo.com/
*** Test Cases ***
TC1
    ${pagetitle}=    launchBrowser    ${url}     ${browser}
    Log To Console   ${pagetitle}
    Log   ${pagetitle}


