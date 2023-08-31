*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Rahulshetty Academy Practice Page
    Launch Rahulshetty Academy Application
    Select radio button Example
    Suggession Class Example
    Dropdown Example
    Checkbox Example
    #Switch Window Example
    #Switch Tab Example
    Switch To Alert Example

*** Keywords ***
Launch Rahulshetty Academy Application
    create webdriver    Chrome
    go to    https://rahulshettyacademy.com/AutomationPractice/
    sleep    5
Select radio button Example
    click element    xpath://input[@value='radio1']
    sleep    4
Suggession Class Example
    input text    xpath://input[@id='autocomplete']     India
    sleep    4
Dropdown Example
    click element    xpath://select[@id='dropdown-class-example']
    sleep    3
    click element    xpath://option[@value='option1']
    sleep    3
Checkbox Example
    click element    xpath://input[@id='checkBoxOption1']
    sleep    4
Switch Window Example
    click element    xpath://button[@id='openwindow']
    sleep    8
Switch Tab Example
    click element    xpath://a[@id='opentab']
    sleep    4
Switch To Alert Example
    input text    xpath://input[@id='name']     sivasairaja
    sleep    5
