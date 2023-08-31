*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Rahulshetty Practice Page
    Launch Rahulshetty Practice Application
    Radio Button Example
    Suggession Class Example
    Dropdown Example
    Checkbox Example
    Switch Window Example
    Switch Tab Example
*** Keywords ***
Launch Rahulshetty Practice Application
    create webdriver    Chrome
    go to    https://rahulshettyacademy.com/AutomationPractice/
    sleep    5
    maximize browser window
Radio Button Example
    click element    xpath://input[@value='radio2']
    sleep    4
Suggession Class Example
    input text    xpath://input[@id='autocomplete']     India
    sleep    4
Dropdown Example
    click element    xpath://select[@id='dropdown-class-example']
    sleep    4
    click element    xpath://option[@value='option1']
    sleep    4
Checkbox Example
    click element    xpath://input[@id='checkBoxOption2']
    sleep    4
Switch Window Example
    click element    xpath://button[@id='openwindow']
    sleep    4
Switch Tab Example
    click element    xpath://a[@id='opentab']
    sleep    4
