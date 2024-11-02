*** Settings ***
*** Test Cases ***
TC1 User Registration test
    [Tags]    regression
    Log To Console    This is user reg test
    Log To Console    This is user reg test is over
TC2 LoginTest
    [Tags]    Sanity
    Log To Console    This is Login Test
    Log To Console    Login Test is over
TC3 change user settings
    [Tags]    regression
    Log To Console    This is changing user settings test
    Log To Console    change user setting is over
TC4 Logout Test
    [Tags]    Sanity
    Log To Console    This is Logout test
    Log To Console    Logout test is over