*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Rahulshettyacademy Page
    Launch Rahulshettyacademy Appliation
    Switch To Alert Example
*** Keywords ***
Launch Rahulshettyacademy Appliation
    create webdriver    Chrome
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    sleep    3
Switch To Alert Example
   # click element    xpath://button[text()='Alert']
   # sleep    4
   # handle alert    accept
    #click element    xpath://button[text()='Confirm Box']
   # sleep    3
   # handle alert    accept
    click element    xpath://button[text()='Prompt']
    sleep    3
    input text into alert    raja   accept
    sleep    3
