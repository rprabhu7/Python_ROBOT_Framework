*** Settings ***
Library    BuiltIn

*** Variables ***
${RUN_TEST}    True

*** Test Cases ***
Conditional Keyword Execution
    [Documentation]    This test demonstrates the use of Run Keyword If.
    Log    Starting the test case.

    Run Keyword If    ${RUN_TEST}    Log    The condition is true, so this keyword runs.
    Run Keyword If    not ${RUN_TEST}    Log    This keyword will not run because the condition is false.

    ${result} =    Evaluate    1 + 1
    Run Keyword If    ${result} == 2    Log    The result is 2.
    Run Keyword If    ${result} != 2    Log    This will not run since the result is indeed 2.

    Log    Finished the test case.
