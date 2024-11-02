*** Settings ***
Library    RequestsLibrary
Library    Collections
*** Variables ***
${base_url}    http://jsonplaceholder.typicode.com
*** Test Cases ***
TestHeaders
    Create Session     mysession     ${base_url}
    ${response}=    Get Request    mysession    /photos
    Log To Console    ${response.headers}
    ${contet_type_value}=    Get From Dictionary   ${response.headers}    Content-Type
    Should Be Equal    ${contet_type_value}    application/json; charset=utf-8
    ${contet_encoding_value}=    Get From Dictionary   ${response.headers}    Content-Encoding
    Should Be Equal    ${contet_encoding_value}    gzip
TestCookies
    Create Session     mysession     ${base_url}
    ${response}=    Get Request    mysession    /photos
    Log To Console    ${response.cookies}
    ${cookie_value}=     Get From Dictionary        ${response.cookies}    _cfid
    Log To Console    ${cookie_value}