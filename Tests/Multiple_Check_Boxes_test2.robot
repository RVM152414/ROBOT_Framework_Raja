*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC_01 Testing Automation Practice Page
    Launch Automation Practice Page
    Multiple Check Boxes Handling
*** Keywords ***
Launch Automation Practice Page
    create webdriver    Chrome
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    sleep    4
Multiple Check Boxes Handling
    @{bullet}=     get webelements      xpath://input[@type='checkbox']
    FOR    ${bike}      IN    @{bullet}
            ${txt}=     get element attribute    ${bike}    id
            IF    "${txt}"=="monday"
                   click element    ${bike}
            END
    END
    sleep    3