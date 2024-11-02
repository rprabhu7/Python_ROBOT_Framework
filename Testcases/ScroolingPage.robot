*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
ScrollingTest
    Open Browser    https://demoqa.com/books    chrome
    Maximize Browser Window
    #Execute Javascript    window.scrollTo(0,1500)        ##scroll by pixel
    #Scroll Element Into View    xpath://div[normalize-space()='Nicholas C. Zakas']  #scroll to element
    Execute Javascript     window.scrollTo(0,document.body.scrollHeight)    #to scroll to end of the page
    sleep    3
    Execute Javascript     window.scrollTo(0,-document.body.scrollHeight)    #to scroll to starting point of the page
    Sleep    3
    Close Browser