*** Settings ***
Library    SeleniumLibrary    # Import SeleniumLibrary for web testing
Suite Setup    Initialize Suite
Suite Teardown    Finalize Suite
Test Setup    Prepare Test
Test Teardown    Clean Up Test

*** Variables ***
${URL}    http://example.com    # Variable for the base URL
${BROWSER}    chrome              # Variable for the browser type

*** Test Cases ***
Open Example Site
    [Documentation]    Test case to open the example site and verify the title.
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Example Domain
    Close Browser

Check Nonexistent Page
    [Documentation]    Test case that expects a 404 error for a nonexistent page.
    Open Browser    http://example.com/nonexistent    ${BROWSER}
    Page Should Contain    404 Not Found
    Close Browser

*** Keywords ***
Initialize Suite
    [Documentation]    Keyword that runs at the start of the suite.
    Log    Starting the test suite.

Finalize Suite
    [Documentation]    Keyword that runs at the end of the suite.
    Log    Test suite completed.

Prepare Test
    [Documentation]    Keyword that runs before each test case.
    Log    Preparing to run test case.

Clean Up Test
    [Documentation]    Keyword that runs after each test case.
    Log    Cleaning up after test case.
