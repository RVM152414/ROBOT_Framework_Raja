*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Automation Practice Page
    Launch Rahulshettyacademy Appliation
    Select Option1 Check Box
*** Keywords ***
Launch Rahulshettyacademy Appliation
    create webdriver    Edge
    go to    https://rahulshettyacademy.com/AutomationPractice/
    maximize browser window
    sleep    3
Select Option1 Check Box
    click element    id:checkBoxOption1
    sleep    2
    checkbox should be selected    id:checkBoxOption1
    click element    id:checkBoxOption1
    sleep    2
    checkbox should not be selected    id:checkBoxOption1