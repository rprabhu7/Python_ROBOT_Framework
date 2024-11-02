*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
MultipleBrowserTest
    open browser     https://www.google.com    chrome
    Maximize Browser Window
    sleep     2
    open browser     https://www.bing.com    chrome
    Maximize Browser Window
    # Switch to the 1st browser
    Switch Browser    1
    ${title1}=    Get Title
    Log    ${title1}
    sleep     3
    Switch Browser   2
    ${title2}=    Get Title
    Log    ${title2}
    sleep     3
    Close All Browsers