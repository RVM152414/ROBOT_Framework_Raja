*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Instagram Login Page
    Launch Instagram Application
    Enter Phone Number
    Enter Password
    Click On Login
    Login With Facebook
    #Forgot Password
*** Keywords ***
Launch Instagram Application
    create webdriver    Chrome
    go to    https://www.instagram.com/accounts/login/
    sleep    4
    maximize browser window
Enter Phone Number
    input text    xpath:(//input[@class='_aa4b _add6 _ac4d'])[1]        987654321
    sleep    4
Enter Password
    input text    xpath://input[@aria-label='Password']     123456789
    sleep    4
Click On Login
    click element    xpath:(//div[contains(@class,'x9f619 xjbqb')])[1]
    sleep    3
Login WIth Facebook
    click element    xpath://span[text()='Log in with Facebook']
    sleep    4
    input text    xpath://input[@id='email']        raja@gmail.com
    sleep    4
    input text    xpath://input[@id='pass']     975312468
    sleep    4
    click element    xpath://button[@id='loginbutton']
    sleep    4
Forgot Password
    click element    xpath://a[text()='Forgot password?']
    sleep    4