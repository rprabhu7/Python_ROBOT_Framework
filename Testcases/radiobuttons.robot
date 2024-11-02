*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/practice/radio-button.php
*** Test Cases ***
Testing Radio Buttons and Checkboxes
    Open Browser     ${url}     ${browser}
    maximize browser window
    set selenium speed  2seconds
    #Selecting radio button with name and value attribute
    select radio button     tab     igottwo
    #Selecting radio button without name and value attribute
    click element   xpath://input[@value='igotthree']
    #sleep   5
    click element   xpath://a[normalize-space()='Check Box']
    #Select check box with name attribute
    #select checkbox     Main Level 1
    #sleep   3
    #Select check box without name attribute
    click element   xpath://input[@id='c_bs_1']
    #Select check box without name attribute
    click element   xpath://input[@id='c_bs_2']
    ##unselect checkbox with name attribute
    ##unselect checkbox     Main Level 1
    ##unselect checkbox without name attribute
    click element   xpath://input[@id='c_bs_1']
    #sleep   3
    close browser

*** Keywords ***
