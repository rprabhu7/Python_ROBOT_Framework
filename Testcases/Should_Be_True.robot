*** Settings ***
Library    BuiltIn

*** Variables ***
${TRUE_CONDITION}    True
${FALSE_CONDITION}    False
${VALUE}    5

*** Test Cases ***
Validate Conditions
    [Documentation]    This test case demonstrates the use of Should Be True and Should Be False.

    Log    Starting the validation test case.

    # Check if a condition is true
    Should Be True    ${TRUE_CONDITION}    The condition should be true.

    # Check if a condition is false
    Should Be False    ${FALSE_CONDITION}    The condition should be false.

    # Validate an expression
    Should Be True    ${VALUE} > 0    The value should be greater than zero.

    # Validate a failing condition
    Should Be False    ${VALUE} < 0    The value should not be less than zero.

    Log    All conditions validated successfully.
