*** Settings ***
Library    RequestsLibrary
*** Variables ***
{url}    http:http://google.com
*** Test Cases ***
Testcase1
    create session     mysession  ${url}
    ${header}=    Create Dictionary    Content-TYpe=application/json
    ${body}=    Create Dictionary    key1=value1    key2=value2
    ${response}=    POST On Session    mysession    data=${body}    headers=${header}
    ${status_code}=    ${response.status_code}
    Should Be Equal As Strings    ${status_code}    201
    ${response_body}=   Convert To String     ${response.content}
    Should Contain    ${response_body}    value1

