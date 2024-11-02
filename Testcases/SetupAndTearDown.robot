*** Settings ***
Suite Setup    Log To Console    opening browser
Suite Teardown    Log To Console    closing browser

Test Setup    Log To Console    Login to Application
Test Teardown    Log To Console    Logout from Application

*** Test Cases ***
TC1 prepaid recharge
    Log To Console    This is prepaid recharge testcase
TC2 postpaid recharge
    Log To Console    This is postpaid recharge testcase
TC3 Search
    Log To Console    This is Search testcase
TC4 Advanced Search
    Log To Console    This is Advance Search testcase