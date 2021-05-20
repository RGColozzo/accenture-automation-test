*** Settings ***
Library  Selenium2Library

Resource  ../common/common.robot

*** Variables ***
${FIRST_NAME}         xpath=.//input[@id="firstname"]
${LAST_NAME}          xpath=.//input[@id="lastname"]
${BIRTH_DATE}         xpath=.//input[@id="birthdate"]
${COUNTRY}            xpath=.//select[@id="country"]
${ZIP_CODE}           xpath=.//input[@id="zipcode"]
${OCCUPATION}         xpath=.//select[@id="occupation"]
${HOBBIES_SPEEDING}   xpath=.//span[@class="ideal-check"]
${BTN_NEXT_2}         xpath=.//button[@id="nextenterproductdata"]

*** Keywords ***
Fill insurant data form
    [Arguments]  ${TXT_FIRST_NAME}  ${TXT_LAST_NAME}  ${TXT_BIRTH_DATE}  ${VALUE_COUNTRY}  ${TXT_ZIP_CODE}  ${VALUE_OCCUPATION}
    
    Input Text     ${FIRST_NAME}  ${TXT_FIRST_NAME}
    Input Text     ${LAST_NAME}   ${TXT_LAST_NAME}
    Input Text     ${BIRTH_DATE}  ${TXT_BIRTH_DATE}
    Click Element  ${COUNTRY}
    Click Element  xpath=.//option[@value="${VALUE_COUNTRY}"]
    Input Text     ${ZIP_CODE}  ${TXT_ZIP_CODE}
    Click Element  ${OCCUPATION}
    Click Element  xpath=.//option[@value="${VALUE_OCCUPATION}"]
    Click Element  ${HOBBIES_SPEEDING}
    Click Button   ${BTN_NEXT_2}