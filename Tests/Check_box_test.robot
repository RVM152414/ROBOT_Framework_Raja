*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Rahulshetty Academy Page
    Launch Rahulshetty Academy Page
    Select Check Boxes
*** Keywords ***
Launch Rahulshetty Academy Page
    create webdriver    Edge
    go to    https://www.rahulshettyacademy.com/AutomationPractice/
    maximize browser window
    sleep    4
Select Check Boxes
    click element    id:checkBoxOption3
    sleep    3
    checkbox should be selected    id:checkBoxOption3
    click element    id:checkBoxOption3
    sleep    3
    checkbox should not be selected    id:checkBoxOption3