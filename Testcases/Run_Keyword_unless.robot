*** Settings ***
Library    BuiltIn

*** Variables ***
${CONDITION}    False

*** Test Cases ***
Conditional Keyword Execution
    [Documentation]    This test demonstrates the use of Run Keyword Unless.
    Log    Starting the test case.

    Run Keyword Unless    ${CONDITION}    Log    The condition is false, so this keyword runs.
    Run Keyword Unless    not ${CONDITION}    Log    This will not run because the condition is false.

    ${result} =    Evaluate    1 + 1
    Run Keyword Unless    ${result} == 2    Log    This will not run since the result is 2.
    Run Keyword Unless    ${result} != 2    Log    The result is not 2, so this will run.

    Log    Finished the test case.
