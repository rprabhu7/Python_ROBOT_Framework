*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
Testing Frames
    open browser    https://demoqa.com/frames   chrome
    select frame    frame1  #id, name, xpath
    ${text} =    Get Text    xpath://h1[@id='sampleHeading']
    Log     The text is: ${text}
    unselect frame
    sleep   2
    select frame    frame2  #id, name, xpath
    ${text2} =    Get Text    xpath://h1[@id='sampleHeading']
    Log     The text is: ${text2}
    unselect frame
