*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
GetAllLinksText
    open browser     https://demowebshop.tricentis.com/    chrome
    Maximize Browser Window
    ${allLinks}=    Get All Links
    Log To Console    All links: ${allLinks}
    ${AllLinksCount}=    Get Element Count    xpath://a
    Log To Console    ${AllLinksCount}
    
    @{linkItems}    Create List
    FOR     ${i}     IN RANGE    1    ${AllLinksCount}
        ${linktext}=    Get Text    xpath:(//a)[${i}]
        Log To Console    ${linktext}
    END
Get All Links From Page
    Open Browser    https://demowebshop.tricentis.com/    chrome
    # Get all links on the page
    @{links}=    Get WebElements    xpath=//a
    # Log the href attributes of each link
    FOR    ${link}    IN    @{links}
        ${href}=    Get Element Attribute    ${link}    href
        Log    Link: ${href}
    END
    Close Browser

        