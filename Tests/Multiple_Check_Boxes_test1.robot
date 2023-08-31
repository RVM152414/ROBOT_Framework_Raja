*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_01 Testing Automation Practice Page
    Launch Rahulshettyacademy Appliation
    Multiple Checkboxes handling
*** Keywords ***
Launch Rahulshettyacademy Appliation
    create webdriver    Edge
    go to    https://rahulshettyacademy.com/AutomationPractice/
    maximize browser window
    sleep    3
Multiple Checkboxes handling
      # ${ele}=       get webelement    id:checkBoxOption1
      # click element    ${ele}
      @{elements}=   get webelements    xpath://input[@type='checkbox']
      FOR    ${ele}  IN     @{elements}
            click element    ${ele}
            sleep    2
      END


