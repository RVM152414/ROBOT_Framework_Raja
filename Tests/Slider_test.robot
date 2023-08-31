*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Automation Practice Page
    Launch Automation Practice Page
    Move Slider
*** Keywords ***
Launch Automation Practice Page
    create webdriver    Chrome
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    sleep    3
Move Slider
    scroll element into view    id:slider
    press keys    id:slider     left
    press keys    id:slider     right
    sleep    3