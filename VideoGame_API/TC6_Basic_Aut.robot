*** Settings ***
Library    RequestsLibrary
Library    Collectiosn
*** Variables ***
${base_url}    http://demoqa.com
*** Test Cases ***
BasicAuth
    ${auth}=    Create List    ToolsQA    TestPassword
    Create Session    mysession    ${base_url}    auth=${auth}
    ${response}=    Get Request    mysession    /authentication/CheckForAuthentication
    Log To Console    ${response.content}
    Should Be Equal As Strings    ${response.status_code}    200
