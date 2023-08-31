*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Orange HRM Page With Valid Credentials
    Launch Orange HRM Page
    Enter User Name
    Enter Password
    Click On Login
    Click On admin
    Enter User Name In Admin
   # Click On User Role
    #Select User Role
    #Enter Employee Name
   # Click On Status
   # Select Status
TC_02 Error Message Validation For Incorrect Validation
    Launch Orange HRM Page
    Enter Invalid User Name
    Enter Invalid Password
    Click On Login
    Verify Error Message
*** Keywords ***
Launch Orange HRM Page
    create webdriver    Chrome
    go to    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
    sleep    5
    maximize browser window
    ${title}=   get title
    log to console    ${title}
    should be equal    ${title}     OrangeHRM
    ${title}=   get text    xpath://p[text()='Forgot your password? ']
    log to console    ${title}
    should contain    ${title}      Forgot your password?
Enter User Name
    input text    xpath://input[@placeholder='Username']     Admin
Enter Password
    input text    name:password     admin123
Click On Login
    ${submitbuttontext}=    get text    xpath://button[@type='submit']
    log to console    ${submitbuttontext}
    click element    xpath://button[@type='submit']
    #wait until element is visible    xpath://span[contains(@class,'oxd')]   5s
    sleep    5
Click On admin
    click element    xpath://span[contains(@class,'oxd')]
    sleep    2
Enter User Name In Admin
    input text    xpath://input[contains(@class,'oxd-')]     raja1234
    sleep    5
Enter Invalid User Name
    input text    xpath://input[@placeholder='Username']     Admin1
Enter Invalid Password
    input text    name:password     admin1234
Verify Error Message
    ${errmsg}=   get text    xpath://p[text()='Invalid credentials']
    should contain    ${errmsg}      Invalid
