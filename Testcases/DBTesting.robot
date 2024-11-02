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
#Create Person table
#    ${output}=    Execute SQL String    Create table Person(id integer,first_name varchar(20),last_name varchar(20));
#    Log To Console    ${output}
#    Should Be Equal As Strings    ${output}    None
Insert Data In Person Table
    ${output}=    Execute SQL String    Insert into Person values(101,"John","Canady");
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None