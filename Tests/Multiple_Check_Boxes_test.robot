*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Automation Practice Page
    Launch Rahulshettyacademy Appliation
    Multiple Checkboxes handling
*** Keywords ***
Launch Rahulshettyacademy Appliation
    create webdriver    Chrome
    go to    https://rahulshettyacademy.com/AutomationPractice/
    maximize browser window
    sleep    3
Multiple Checkboxes handling
      @{element}=   get webelements    xpath://input[@type='checkbox']
      FOR   ${ele}   IN   @{element}
            ${vis}=     element should be enabled    ${ele}
            IF  ${vis}   :
                click element    ${ele}
                ${txt}=     get element attribute    ${ele}     value
                log to console    ${txt}
      END
      sleep     2
      FOR   ${J}    IN RANGE    0   3
        log to console    ${J}
        click element    ${element}[${J}]
      END
