*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Naukri Login Page
    Launch Naukri Application
    Enter Full name
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
    ${title}=   get title
    log to console    ${title}
    should be equal    ${title}     Register on Naukri.com: Apply to Millions of Jobs Online
    ${text}=    get text    xpath://h1[text()='Find a job & grow your career']
    log to console   ${text}
    should contain    ${text}       Find a job
Enter Full name
    input text    xpath:(//input[@class='formInput __input'])[1]    raja
    sleep    5
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
    click element    xpath://span[text()='Hyderabad/Secunderabad']
    sleep    4
Resume
    click element    xpath://button[text()='Upload Resume']
    sleep    4
Click On Register Now
    click element    xpath://button[text()='Register now']
    sleep    4