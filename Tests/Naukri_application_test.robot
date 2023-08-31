*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Naukri Login Page
    Launch Naukri Application
    Enter Full name
    #Enter Email ID
    Enter Password
    Enter Mobile number
    Work status
    Current city
    Resume
    Click On Register Now
*** Keywords ***
Launch Naukri Application
    create webdriver    Chrome
    go to    https://www.naukri.com/registration/createAccount?othersrcp
    sleep    4
    maximize browser window
Enter Full name
    input text    xpath:(//input[@class='formInput __input'])[1]    raja
    sleep    4
Enter Email ID
    input text    xpath://input[@id='email']        raja@gmail.com
    sleep    4
Enter Password
    input text    xpath:(//input[@class='formInput __input'])[1]        456789
    sleep    4
Enter Mobile number
    input text    xpath://input[@id='mobile']       9843256172
    sleep    4
Work status
    click element    xpath://h2[text()="I'm a fresher"]
    sleep    4
Current city
    input text    xpath://label[text()='Current city']      rajahmundry
    sleep    4
Resume
    click element    xpath://button[text()='Upload Resume']
    sleep    4
Click On Register Now
    click element    xpath://button[text()='Register now']
    sleep    4