*** Settings ***
*** Variables ***
@{items}    item1    item2    item3    item4
*** Test Cases ***
Forloop1
    FOR     ${i}    IN RANGE    1    10
        Log     current number is: ${i}
    END
Forloop2
    FOR    ${item}    IN    @{items}
        LOG    current item is: ${item}
    END
Forloop3
    @{items2}    Create List    1    2    3    4    5
    FOR    ${item}    IN    @{items2}
        LOG    current item is: ${item}
    END
Forloop4
    @{items3}    Create List    1    2    3    4    5
    FOR    ${i}    IN    @{items3}
        LOG    current item is: ${i}
        Exit For Loop If    ${i}==3
    END