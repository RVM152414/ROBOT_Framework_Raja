*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Protractor Page
    Launch Protractor Application
    Enter Name
    Enter Email
    Enter Password
    Select Employment Status
    Select Date Of Birth
    Click On Submit
*** Keywords ***
Launch Protractor Application
    create webdriver    Chrome
    go to    https://rahulshettyacademy.com/angularpractice/
    sleep    5
    maximize browser window
    ${title}=   get title
    log to console    ${title}
    should be equal    ${title}     ProtoCommerce
Enter Name
    input text    xpath://input[@minlength='2']       sivasairaja
    sleep    5
Enter Email
    input text    xpath://input[@name='email']      raja@gmail.com
    sleep    5
Enter Password
    input text    id:exampleInputPassword1      987654321
    sleep    5
Select Employment Status
    click element    id:inlineRadio1
    sleep    5
Select Date Of Birth
    click element    xpath://input[@max='3000-12-31']
    sleep    3
Click On Submit
    click element    xpath://input[@class='btn btn-success']
    sleep    4