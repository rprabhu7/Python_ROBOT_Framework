*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup        Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown    Disconnect From Database

*** Variables ***
${DBName}        sakila
${DBUser}        root
${DBPass}        password
${DBHost}        127.0.0.1
${DBPort}        3306

*** Test Cases ***

Insert Multiple records In Person Table
    #Multiple records
    ${output}=    Execute Sql Script     ./Data/mydb_person_insertdata.sql
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None
Check If Ram record present in person table
    Check If Exists In Database    select id from sakila.person where first_name='Ram';
