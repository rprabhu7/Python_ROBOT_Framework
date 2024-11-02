*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}    https://demoqa.com/
*** Test Cases ***
POST Request User Registration
     Create Session    mysession     ${base_url}
     ${body}=    Create Dictionary    userName=jj2    password=Srigovinda7@
     ${header}=    Create Dictionary    Content-Type=application/json
     ${response}=    Post Request    mysession    Account/v1/User    data=${body}    headers=${header}
     Log To Console    ${response.status_code}
     Log To Console    ${response.content}

     #Validations
     ${response_body}=    Convert To String    ${response.content}
     Should Contain    ${response_body}    userID
     ${status_code}=    Convert To String     ${response.status_code}
     Should Be Equal    ${status_code}    201
     
*** Keywords ***
