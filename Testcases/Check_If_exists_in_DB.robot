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
Check If Ram record present in person table
    Check If Exists In Database    select id from person where first_name='Ram';
Check If JIO record not present in person table
    Check If Not Exists In Database    select id from person where first_name='Jio';
check if person table exists in sakila DB
    Table Must Exist    person
Verify rowcount is zero
    Row Count Is 0    select * from person where first_name='xyz';
Verify rowcount is equal to some value
    Row Count Is Equal To X    select * from person where first_name='Ram';    1
Verify rowcount is greater than some value
    Row Count Is Greater Than X    select * from person where first_name='Ram';    0
Verify rowcount is less than some value
    Row Count Is Less Than X    select * from person where first_name='Ram';    2
update record in person table
    ${output}=    Execute SQL String    update Person set first_name='govinda' where id =103;
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None
Retrieve All records from person table
    @{query_results}=    query     select * from person;
    Log Many    @{query_results}
Delete record from person table
    ${output}=    Execute SQL String    delete from Person where id =103;
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None
