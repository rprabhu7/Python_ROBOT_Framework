*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php
*** Test Cases ***
handling dropdowns and list boxes
    open browser    ${url}  ${browser}
    maximize browser window
    select from list by label   state   NCR
    sleep   3
    select from list by index   state   4
    sleep   3
    select from list by value   state   Haryana
    sleep   3
    close browser
*** Keywords ***
