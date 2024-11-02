*** Settings ***
Library    BuiltIn

*** Variables ***
${URL}    http://example.com

*** Test Cases ***
Test Case with Ignored Error
    [Documentation]    This test case demonstrates the use of Run Keyword And Ignore Error.

    Log    Starting the test case.

    # This keyword will fail, but the error will be ignored
    ${result}=    Run Keyword And Ignore Error    Should Be Equal    ${1}    ${2}

    # Check the result of the previous keyword execution
    Run Keyword If    '${result}[0]' == 'FAIL'    Log    The previous keyword failed, but we are continuing execution.

    # Continue with other steps
    Open Browser    ${URL}    chrome
    Title Should Be    Example Domain
    Close Browser

    Log    Finished the test case.
