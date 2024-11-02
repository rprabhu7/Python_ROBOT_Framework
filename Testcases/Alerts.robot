*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
AlertWindow
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    click element   xpath://button[@id='confirmBtn']
    sleep   3
    #handle alert    accept     #press ok button in alert window
    #handle alert    dismiss    #press cancel button in alert window
    #handle alert    leave       #just leave the alert window.does not do anythong with alert
    alert should be present     Press a button!   # check for the message 'Press a button!' in alert window
    #alert should not be present     Press a button!    # negative condition
    sleep   3