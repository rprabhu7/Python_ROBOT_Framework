*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Example Test Case 1
    [Documentation]    This is an example test case.
    Open Browser    http://example.com    chrome
    Close Browser

Example Test Case 2
    [Documentation]    This test will fail.
    Should Be Equal    ${1}    ${2}
