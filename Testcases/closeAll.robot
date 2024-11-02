*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
MyTestcase
    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window
    open browser    http://automationpractice.com  chrome
    maximize browser window
    close browser   #close the latest browser
    close all browsers  #close all browser window