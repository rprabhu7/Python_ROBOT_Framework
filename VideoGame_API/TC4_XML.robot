*** Settings ***
Library    XML
Library    os
Library    Collections

*** Test Cases ***
Testcase1
    ${xml_obj}=    Parse Xml    D:/sample.xml
    Log To Console    ${xml_obj}
    #Validations
    #check the single element value
    #Approach1
    ${title}=    Get Element Text    ${xml_obj}    .//CD[1]/TITLE
    Log To Console    ${title}
    Should Be Equal    ${title}   Empire Burlesque

    #Approach2
    ${title_element}=    Get Element    ${xml_obj}    .//CD[1]/TITLE
    Log To Console    ${title_element.text}
    Should Be Equal    ${title_element.text}   Empire Burlesque
    #Approach3
    Element Text Should Be    ${xml_obj}    Empire Burlesque    .//CD[1]/TITLE

    #validation2 - Check number of elements in xml file
    ${count}=    Get Element Count    ${xml_obj}    .//CD
    Log To Console    ${count}
    Should Be Equal As Integers       ${count}    26

    #validation3
    #Element Attribute Should Be    ${xml_obj}    id 12345    .//CD[6]

    #val4
    ${child_elements}=    Get Child Elements     ${xml_obj}    .//CD[1]
    Should Not Be Empty    ${child_elements}
    ${title}=    Get Element Text    ${child_elements[0]}
    ${artist}=    Get Element Text    ${child_elements[1]}
    ${country}=    Get Element Text    ${child_elements[2]}
