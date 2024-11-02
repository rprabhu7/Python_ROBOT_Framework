*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    RequestsLibrary
Library    OperatingSystem
*** Variables ***
${url}    https://fake-json-api.mock.beeceptor.com
*** Test Cases ***
GET API Test
    Create Session    mysession    ${url}
    ${response}=    GET On Session    mysession     /users
    ${status_code}=    Convert To String    ${response.status_code}
    Log To Console    ${response.status_code}
    Should Be Equal    ${status_code}     200
    ${body}=    Convert To String            ${response.content}
    Page Should Contain    Dimitri Pagac
    Capture Page Screenshot    D:/sample.png

