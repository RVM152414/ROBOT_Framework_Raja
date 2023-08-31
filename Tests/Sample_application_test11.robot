*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Rahulshetty Practice Page
    Launch Rahulshetty Practice Application
    Switch To Alert Example
    #Element Displayed Example
   # Mouse Hover Example
*** Keywords ***
Launch Rahulshetty Practice Application
    create webdriver    Chrome
    go to    https://rahulshettyacademy.com/AutomationPractice/
    sleep    5
    maximize browser window
Switch To Alert Example
    input text    xpath://input[@id='name']     raja
    sleep    5
    click element    xpath://input[@id='alertbtn']
    sleep    3
    handle alert    accept
    sleep    3
    click element    xpath://input[@id='confirmbtn']
    sleep    4
    handle alert    dismiss
Element Displayed Example
    click element    xpath://input[@id='hide-textbox']
    sleep    4
Mouse Hover Example
    mouse over     xpath://button[@id='mousehover']
    click element    xpath://a[text()='Top']
    sleep    3
