*** Settings ***
Library    ../src/MyLibrary.py

*** Test Cases ***
Example Test Case
    ${greeting}=    My Function    World
    Log    ${greeting}
