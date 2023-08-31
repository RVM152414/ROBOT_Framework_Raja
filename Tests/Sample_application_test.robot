*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
TC_01 Testing Facebook Login
       Launch Facebook Application
       Enter User Name
       Enter Password
      # Click On Submit Button
      Clicking On Forgot Password Link
*** Keywords ***
Launch Facebook Application
    Create Webdriver    Chrome
    go to    https://www.facebook.com/login
    sleep    1
Enter User Name
    input text    id:email  raja@gmail.com
Enter Password
    input text    id:pass   12345678
Click On Submit Button
    click element    id:loginbutton
    sleep    25
Clicking On Forgot Password Link
    click element    partial link:Forgotten
    sleep    10


