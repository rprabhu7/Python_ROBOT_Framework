*** Settings ***
Library    RequestsLibrary
Library    Collections
*** Variables ***
${base_url}    http://localhost:8080
*** Test Cases ***
TC1 GET - return All videogames
    Create Session    mysession    ${base_url}
    ${header}=    Create Dictionary    Accept=application/json
    ${response}=    Get Request    mysession    /app/videogames    headers=${header}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    #validation
    ${status_code}=    Convert To String     ${response.status_code}
    ${body}=    Convert To String    ${response.content}
    Should Be Equal    ${status_code}    200
    Should Contain    ${body}    id

TC2 POST request Add viedogame
    Create Session    mysession    ${base_url}
    ${body}=    Create Dictionary    id=16    name=Grand Theft Auto VII   releaseDate=2014-04-25   reviewScore=97    category=Driving    rating=Mature
    ${header}=    Create Dictionary    Accept=application/xml     Accept-encoding=gzip, deflate, br, zstd    Content-Type=application/json    connection=keep-alive    Host=localhost:8080    origin=http://localhost:8080    Referer=http://localhost:8080/swagger-ui/index.html    User-Agent=PostmanRuntime/7.42.0    Content-Length=168
    ${response}=    POST On Session    mysession    /app/videogames    json=${body}    headers=${header}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    #validations
    ${status_code}=    Convert To String     ${response.status_code}
    ${body}=    Convert To String    ${response.content}
    Should Be Equal    ${status_code}    200
    Should Contain    ${body}    Record Added
TC3 GET - return Single game
    Create Session    mysession    ${base_url}
    ${header}=    Create Dictionary    Accept=application/json
    ${response}=    Get Request    mysession    /app/videogames/1    headers=${header}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    #validation
    ${status_code}=    Convert To String     ${response.status_code}
    ${body}=    Convert To String    ${response.content}
    Should Be Equal    ${status_code}    200
    Should Contain    ${body}    Universal
TC4 PUT request update existing data
    Create Session    mysession    ${base_url}
    ${body}=    Create Dictionary    id=3    name=Resident Evil 10    releaseDate=2005-10-01   reviewScore=90    category=driving    rating=mature
    ${header}=    Create Dictionary    Content-Type=application/json    Accept=application/json
    ${response}=    PUT On Session    mysession    /app/videogames/3    json=${body}    headers=${header}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    #validations
    ${status_code}=    Convert To String     ${response.status_code}
    ${body}=    Convert To String    ${response.content}
    Should Be Equal    ${status_code}    200
    Should Contain    ${body}    mature
TC5 DELETE - delete Videogame record
    Create Session    mysession    ${base_url}
    ${header}=    Create Dictionary    Accept=application/json
    ${response}=    Delete Request    mysession    /app/videogames/2    headers=${header}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    #validation
    ${status_code}=    Convert To String     ${response.status_code}
    ${body}=    Convert To String    ${response.content}
    Should Be Equal    ${status_code}    200
    Should Contain    ${body}    Record Deleted Successfully
*** Keywords ***
