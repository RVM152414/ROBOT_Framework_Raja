*** Settings ***
Library    SeleniumLibrary
Suite Setup    log to console   suite setup
Test Setup    Launch Automation Practice Page
Test Teardown    close browser
Suite Teardown    log to console   suite teardown
*** Variables ***
${Browser}=     Chrome
${URL}=     https://testautomationpractice.blogspot.com/
${Alert_Locator}=   xpath://button[text()='Alert']
${Confirm_Locator}=     xpath://button[text()='Confirm Box']
${Prompt_Locator}=      xpath://button[text()='Prompt']
${Sleep}=   4
*** Test Cases ***
TC_01 Testing Alert
    Handle Alert Element
TC_02 Testing Confirm Alert
    Handle Confirm Alert
TC_03 Testing Prompt Alert
    Handle Prompt Alert
*** Keywords ***
Launch Automation Practice Page
    create webdriver    ${Browser}
    go to    ${URL}
    maximize browser window
    sleep    ${Sleep}
Handle Alert Element
    click element    ${Alert_Locator}
    sleep    ${Sleep}
    handle alert    accept
    sleep    ${Sleep}
Handle Confirm Alert
    click element    ${Confirm_Locator}
    sleep    ${Sleep}
    handle alert    accept
    sleep    ${Sleep}
Handle Prompt Alert
    click element    ${Prompt_Locator}
    sleep    ${Sleep}
    input text into alert       raja        accept
    sleep    ${Sleep}
