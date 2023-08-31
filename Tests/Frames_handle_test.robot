*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Automation Practice Page
    Launch Automation Practice Page
    Handling Frames
*** Keywords ***
Launch Automation Practice Page
    create webdriver    Edge
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    sleep    3
Handling Frames
    select frame    id:frame-one796456169
    input text    id:RESULT_TextField-0
    sleep    4
    unselect frame
    input text    id:"textarea"      bommuru
    sleep    3