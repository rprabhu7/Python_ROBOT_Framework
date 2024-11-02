*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
Login TC
    Open Browser    https://demowebshop.tricentis.com/    chrome
    Maximize Browser Window
    Capture Element Screenshot    xpath://img[@alt='Tricentis Demo Web Shop']    D:/Python_ROBOT_Framework/pythonProject_Robot/Screenshots/Logo.png
    Set Selenium Speed    1seconds
    Click Element    xpath://a[normalize-space()='Log in']
    Input Text    id:Email    test.gdg@gmail.com
    Input Text    id:Password    Srigovinda7
    Click Element    xpath://input[@value='Log in']
    Capture Page Screenshot    D:/Python_ROBOT_Framework/pythonProject_Robot/Screenshots/HomePage.png
