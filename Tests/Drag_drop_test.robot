*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Automation Practice Page
    Launch Automation Practice Page
    Drag and Drop Element
*** Keywords ***
Launch Automation Practice Page
    create webdriver    Edge
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    sleep    3
Drag and Drop Element
    drag and drop    id:draggable   id:droppable
    sleep    4