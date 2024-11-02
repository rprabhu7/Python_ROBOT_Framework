*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
Mouse Operations
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    Maximize Browser Window
    #right click
    Open Context Menu    xpath://span[@class='context-menu-one btn btn-neutral']  ##Right click action
    Sleep    3
    ## Double click action'
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://button[normalize-space()='Copy Text']
    sleep     3

    #Drag and Drop Action
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id:box6    id:box106
    sleep     2
    Close Browser