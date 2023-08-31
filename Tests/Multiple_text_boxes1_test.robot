*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TC_01 Testing Automation Practice Page
    Launch Automation Practice Page
    Multiple Test Boxes Handling
*** Keywords ***
Launch Automation Practice Page
    create webdriver    Chrome
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    sleep    4
Multiple Test Boxes Handling
    @{car}=     get webelements     xpath://input[@type='text']
    FOR     ${bike}     IN      @{car}
            input text    ${bike}   bullet
            sleep    4
    END