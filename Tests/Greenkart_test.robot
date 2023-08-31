*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${text}
${txt}
*** Test Cases ***
TC_01 Testing Greenkart Application
    Launch Greenkart Application
    Select Cucumber
    Click On Bag
    Proceed To Checkout
    Click on Place Order
    Select Country
    Click on Agree Button
    Click On Proceed
*** Keywords ***
Launch Greenkart Application
    create webdriver    Chrome
    go to    https://rahulshettyacademy.com/seleniumPractise/#/
    maximize browser window
    ${text}=    get text    xpath:(//p[@class='product-price'])[3]
    sleep    3
Select Cucumber
    click element    xpath:(//button[text()='ADD TO CART'])[3]
    sleep    3
Click On Bag
    click element    xpath://img[@alt='Cart']
    sleep    3
Proceed To Checkout
    click element    xpath://button[text()='PROCEED TO CHECKOUT']
    sleep    3
    ${txt}=    get text    xpath://span[@class='discountAmt']
    should be equal    ${text}      ${txt}
Click on Place Order
    click element    xpath://button[text()='Place Order']
    sleep    3
Select Country
    select from list by label    xpath://select[@style='width: 200px;']      India
    sleep    3
Click on Agree Button
    click element    xpath://input[@class='chkAgree']
    sleep    3
Click On Proceed
    click element    xpath://button[text()='Proceed']
    sleep    3