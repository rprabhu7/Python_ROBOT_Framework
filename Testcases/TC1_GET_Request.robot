*** Settings ***
Library    RequestsLibrary
Library    Collections
*** Variables ***
${base_url}    https://demoqa.com/
${city}    delhi
*** Test Cases ***
Get Book Info
    Create Session    mysession    ${base_url}
    ${response}=    GET On Session    mysession    utilities/weather/city/delhi
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}
    #Validations
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200

    ${body}=    Convert To String    ${response.content}
    should contain     ${body}     delhi

    ${contentTypeValue}=    Get From Dictionary    ${response.headers}    Content-Type
    Should Contain       ${contentTypeValue}    application/json


