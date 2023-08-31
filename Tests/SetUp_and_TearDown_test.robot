*** Settings ***
Library    SeleniumLibrary
Suite Setup    log to console   suite setup
Test Setup    Launch Automation Practice Page
Test Teardown    close browser
Suite Teardown    log to console   suite teardown
*** Test Cases ***
TC_01 Testing Alert
    Handle Alert Element
TC_02 Testing Confirm Alert
    Handle Confirm Alert
TC_03 Testing Prompt Alert
    Handle Prompt Alert
*** Keywords ***
Launch Automation Practice Page
    create webdriver    Chrome
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    sleep    2
Handle Alert Element
    click element    xpath://button[text()='Alert']
    sleep    2
    handle alert    accept
    sleep    1
Handle Confirm Alert
    click element    xpath://button[text()='Confirm Box']
    sleep    2
    handle alert    accept
    sleep    1
Handle Prompt Alert
    click element    xpath://button[text()='Prompt']
    sleep    2
    input text into alert       raja        accept
    sleep    3
