*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
TabbedWindowTest
    open browser     https://demo.automationtesting.in/Windows.html    chrome
    Maximize Browser Window
    click element    xpath://a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
    sleep     2
    # Get the window handles
    ${handles}=    Get Window Handles
    # Switch to the new tab (the last opened tab)
    Switch Window    ${handles[-1]}
    click element     xpath://a[@class='selenium-button selenium-webdriver text-uppercase fw-bold']
    sleep     3
    Close All Browsers
