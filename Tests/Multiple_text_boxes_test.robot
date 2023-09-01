*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC_01 Testing Automation Practice Page
    Launch Automation Practice Application
    Multiple Text Boxes Handling
*** Keywords ***
Launch Automation Practice Application
    create webdriver    Chrome
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    sleep    3
Multiple Text Boxes Handling
    @{text}=        get webelements    xpath://input[@type='text']
    FOR     ${mg}      IN   @{text}
            input text    ${mg}     raja
            sleep    2
    END