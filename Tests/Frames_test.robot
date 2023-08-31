*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TC_01 Testing Automation Practice Page
    Launch Automation Practice Page
    Handling Frames
*** Keywords ***
Launch Automation Practice Page
    create webdriver    Chrome
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    sleep    3
Handling Frames
    select frame    id:frame-one796456169
    input text    id:RESULT_TextField-0     raja
    sleep    3
    click element    xpath://label[@for='RESULT_RadioButton-1_0']
    sleep    3
    input text    xpath://input[@date='mm/dd/yy']       20092001
    sleep    3
    select from list by value    id:RESULT_RadioButton-3        Radio-1
    sleep    3
    unselect frame
    input text    id:name       raja
    sleep    3
    input text    id:email      sivasairaja@gmail.com
    sleep    3



