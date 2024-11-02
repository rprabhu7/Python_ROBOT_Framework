*** Settings ***
Library    BuiltIn
Library    SeleniumLibrary

*** Variables ***
${URL}    http://example.com
${BROWSER}    chrome

*** Test Cases ***
Test Case with Failure Handling
    [Documentation]    This test case demonstrates how to run a keyword if the test fails.

    Log    Starting the test case.

    # Open the browser
    Open Browser    ${URL}    ${BROWSER}

    # Intentionally failing keyword
    Should Be Equal    ${1}    ${2}    # This will fail

    # Close the browser (this will not run if the above fails)
    Close Browser

    Log    This log will not execute if the test fails.

*** Test Teardown ***
Run Keyword If Test Failed    Take Screenshot

*** Keywords ***
Take Screenshot
    [Documentation]    Takes a screenshot if the test fails.
    ${timestamp} =    Get Time    result    result_format=%Y%m%d%H%M%S
    Capture Page Screenshot    screenshot_${timestamp}.png
    Log    Screenshot taken due to test failure.
