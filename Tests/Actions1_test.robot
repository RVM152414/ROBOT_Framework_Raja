*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TC_01 Testing Automation Practice Page
    Launch Automation Practice Page
    Double Click and Validate Test
*** Keywords ***
Launch Automation Practice Page
    create webdriver    Chrome
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    sleep    4
Double Click and Validate Test
    scroll element into view    xpath://button[text()='Copy Text']
    double click element    xpath://button[text()='Copy Text']
    ${ele}=     get element attribute    id:field2      value
    should be equal    ${ele}       Hello World!