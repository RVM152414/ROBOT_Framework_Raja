*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Rahulshettyacademy Page
    Launch Appliation
    Click New Browser Window
    Switch To New Window
    Verify New Window
    #Close New Window
    Switch To Main Window
    Verify Main Window
*** Keywords ***
Launch Appliation
    create webdriver   Chrome
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    sleep    5
Click New Browser Window
    click element    xpath://button[text()='New Browser Window']
    sleep    3
Switch To New Window
    switch window    NEW
    sleep    5
Verify New Window
    ${t}=   get title
    should be equal    ${t}     Your Store
    sleep    4
Switch To Main Window
    switch window    MAIN
    sleep    4
Verify Main Window
    ${tt}=   get title
    should be equal    ${tt}     Automation Testing Practice
    sleep    4
