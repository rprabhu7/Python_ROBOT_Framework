*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TableValidations
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    ${rows}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${columns}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    Log To Console    ${rows}
    Log To Console    ${columns}
    ${data}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${data}
    Table Column Should Contain    xpath://table[@name='BookTable']    2     Author
    Table Row Should Contain    xpath://table[@name='BookTable']    4    Learn JS
    Table Cell Should Contain   xpath://table[@name='BookTable']    5    2     Mukesh  #5th row 2nd column should contain Mukesh
    Table Header Should Contain   xpath://table[@name='BookTable']    BookName
    Close Browser