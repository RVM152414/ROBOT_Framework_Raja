*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Automation Practice Page
    Launch Automation Practice Page
    Handle Alert Element
*** Keywords ***
Launch Automation Practice Page
    create webdriver    Edge
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    sleep    4
Handle Alert Element
    click element    xpath://button[text()='Alert']
    sleep    4
    handle alert    ACCEPT
    click element    xpath://button[text()='Confirm Box']
    sleep    4
    handle alert    ACCEPT
    click element    xpath://button[text()='Prompt']
    sleep    4
    input text into alert    bullet   ACCEPT
    sleep    4