*** Variables ***
${a}=   3
${b}=   4
*** Test Cases ***
TC_01 Calculating Addition
    Addition Of Two Numbers
TC_02 Calculating Subtraction
    Substraction Of Two Numbers
TC_03 Calculating Multiplication
    Multiplication Of Two Numbers
TC_04 Calculating Devision
    Devision Of Two Numbers
*** Keywords ***
Addition Of Two Numbers
    ${result}=   evaluate    ${a}+${b}
    log to console    ${result}
Substraction Of Two Numbers
    ${result}=   evaluate    ${a}-${b}
    log to console    ${result}
Multiplication Of Two Numbers
    ${result}=   evaluate    ${a}*${b}
    log to console    ${result}
Devision Of Two Numbers
    ${result}=   evaluate    ${a}/${b}
    log to console    ${result}
