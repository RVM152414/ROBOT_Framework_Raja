*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TC_01 Testing Automation Practice Page
    Launch Rahulshettyacademy Appliation
    Select Value From Drop Down
*** Keywords ***
Launch Rahulshettyacademy Appliation
    create webdriver    Chrome
    go to    https://rahulshettyacademy.com/AutomationPractice/
    maximize browser window
    sleep    3
Select Value From Drop Down
    select from list by label    id:dropdown-class-example      Option1
    sleep    2
    select from list by index    id:dropdown-class-example      3
    sleep    3
    select from list by value    id:dropdown-class-example      option2
    sleep    3
