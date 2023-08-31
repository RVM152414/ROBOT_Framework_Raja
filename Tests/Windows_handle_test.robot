*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TC_01 Testing Automation Practice Page
    Launch Automation Practice Page
    Click New Browser Window
    Switch to New Window
    Verify New Window
    Switch To Main Window
    Verify Main Window
*** Keywords ***
Launch Automation Practice Page
    create webdriver    Chrome
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    sleep    3
Click New Browser Window
    click element    xpath://button[text()='New Browser Window']
    sleep    3
Switch to New Window
    switch window    NEW
    sleep    3
Verify New Window
    ${title}=   get title
    should be equal    ${title}     Your Store
    sleep    3
Switch To Main Window
    switch window    MAIN
    sleep    3
Verify Main Window
    ${tle}=     get title
    should be equal    ${tle}       Automation Testing Practice
    sleep    3