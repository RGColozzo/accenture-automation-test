*** Settings ***
Library  Selenium2Library

Resource  ../common/common.robot

*** Variables ***
${EMAIL}         xpath=.//input[@id="email"]
${USERNAME}      xpath=.//input[@id="username"]
${PASSWORD}      xpath=.//input[@id="password"]
${CONFIRM_PASS}  xpath=.//input[@id="confirmpassword"]
${BTN_SEND}      xpath=.//button[@id="sendemail"]
${BTN_CONFIRM}   xpath=.//button[text()="OK"]

*** Keywords ***
Send quote
    [Arguments]  ${TXT_EMAIL}  ${TXT_USERNAME}  ${TXT_PASSWORD}
    
    Input Text    ${EMAIL}         ${TXT_EMAIL}
    Input Text    ${USERNAME}      ${TXT_USERNAME}
    Input Text    ${PASSWORD}      ${TXT_PASSWORD}
    Input Text    ${CONFIRM_PASS}  ${TXT_PASSWORD}
    Click Button  ${BTN_SEND}

Success message should be visible
    Sleep  5s
    Wait Until Element is Visible  ${BTN_CONFIRM}
    Click Button  ${BTN_CONFIRM}