*** Settings ***
Library    BuiltIn
Library    SeleniumLibrary

*** Variables ***
${URL}    http://example.com
${BROWSER}    chrome

*** Test Cases ***
Test Case with Success Handling
    [Documentation]    This test case demonstrates how to run a keyword if the test passes.

    Log    Starting the test case.

    # Open the browser
    Open Browser    ${URL}    ${BROWSER}

    # Check if the title is as expected
    Title Should Be    Example Domain

    # Log success message if the test passes
    Run Keyword If Test Passed    Log    The test passed successfully!

    # Continue with other operations
    Close Browser
    Log    Finished the test case.

*** Test Teardown ***
Run Keyword If Test Passed    Log    The test teardown is successful.
