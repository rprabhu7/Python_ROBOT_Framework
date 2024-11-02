*** Settings ***
Library    ../src/MyLibrary2.py

*** Variables ***
${URL}    http://example.com

*** Test Cases ***
Open Example Site
    [Documentation]    Open the example site and check the title.
    Open Example Site    ${URL}
    Validate Title    Example Domain
    Close Browser
