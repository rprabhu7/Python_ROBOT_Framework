*** Settings ***
Library    JSONLibrary
Library     os
Library    Collections
*** Variables ***
*** Test Cases ***
testcase1
    ${json_object}=    Load Json From File    D:/jsondata.json
    ${name_value}=    Get Value From Json    ${json_object}    $.firstName
    Log To Console    ${name_value[0]}
    Should Be Equal   ${name_value[0]}    John

    ${street_value}=    Get Value From Json    ${json_object}    $.address.streetAddress
    Log To Console    ${street_value[0]}
    Should Be Equal   ${street_value[0]}    naist street

    ${phone_value}=    Get Value From Json    ${json_object}    $.phoneNumbers[0].number
    Log To Console    ${phone_value[0]}
    Should Be Equal   ${phone_value[0]}    0123-4567-8888
