*** Settings ***
Library    SeleniumLibrary
Library    browser

*** Test Cases ***
TC_01 Testing Rahulshettyacademy Page
    Launch Rahulshettyacademy Appliation
*** Keywords ***
Launch Rahulshettyacademy Appliation
    web
    create webdriver    headlesschrome
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    sleep   2
