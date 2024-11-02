*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
Navigation Test
    open browser     https://www.google.com     chrome
    Maximize Browser Window
    ${loc}=    Get Location
    Log To Console    ${loc}
    Sleep    2
    Go To    https://www.bing.com
    ${loc}=    Get Location
    Log To Console    ${loc}
    sleep    2
    Go Back
    ${loc}=    Get Location
    Log To Console    ${loc}
    sleep     2