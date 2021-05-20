*** Settings ***
Library  Selenium2Library

Resource  ../common/common.robot

*** Variables ***
${START_DATE}         xpath=.//input[@id="startdate"]
${INSURANCE_SUM}      xpath=.//select[@id="insurancesum"]
${DAMAGE_INSURANCE}   xpath=.//select[@id="damageinsurance"]
${BTN_NEXT_3}         xpath=.//button[@id="nextselectpriceoption"]

*** Keywords ***
Fill product data form
    [Arguments]  ${TXT_START_DATE}  ${VALUE_INSURANCE_SUM}  ${VALUE_DAMAGE_INSURANCE}

    Input Text  ${START_DATE}  ${TXT_START_DATE}
    Click Element  ${INSURANCE_SUM}
    Click Element  xpath=.//option[@value="${VALUE_INSURANCE_SUM}"]
    Click Element  ${DAMAGE_INSURANCE}
    Click Element  xpath=.//option[text()="${VALUE_DAMAGE_INSURANCE}"]
    Execute Javascript  document.getElementById('EuroProtection').click()
    Click Button   ${BTN_NEXT_3}