*** Settings ***
Library    BuiltIn

*** Variables ***
${EXPECTED_ERROR_MESSAGE}    '1 != 2'

*** Test Cases ***
Test Case with Expected Error
    [Documentation]    This test case demonstrates the use of Run Keyword And Expect Error.

    Log    Starting the test case.

    # This keyword is expected to fail
    Run Keyword And Expect Error    ${EXPECTED_ERROR_MESSAGE}    Should Be Equal    ${1}    ${2}

    Log    The expected error was encountered, continuing with the test case.

    # Continue with other steps
    Log    This part of the test will execute after the expected error.
