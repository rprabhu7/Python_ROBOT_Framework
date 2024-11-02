*** Settings ***
Library    JSONLibrary
Library     os
Library    Collections
Library     RequestsLibrary
*** Variables ***
${base_url}    https://restcountries.eu
*** Test Cases ***
Get Country Info
    Create Session    mysession    ${base_url}
    ${response}=    GET On Session    mysession    /rest/v2/alpha/IN
    ${json_obj}=    To Json    ${response.content}
    ${country_name}=    Get Value From Json    ${json_obj}    $.name
    Log To Console    ${country_name[0]}
    

    #Single Data Validation
    Should Be Equal   ${country_name[0]}    India

    #Single data validation in array
    ${border}=    Get Value From Json    ${json_obj}    $.borders[0]
    Log To Console    ${border[0]}
    Should Be Equal  ${border[0]}    AFG

    #multiple data validation in Array
    ${borders}=    Get Value From Json    ${json_obj}    $.borders
    Log To Console    ${borders[0]}
    Should Contain Any    ${borders[0]}    AFG    BGD    BTN    MMR    CHN
