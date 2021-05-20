*** Settings ***
Library  Selenium2Library

Resource  ../common/common.robot

*** Variables ***
${MAKE}                xpath=.//select[@id="make"]
${ENGINE_PERFORMANCE}  xpath=.//input[@id="engineperformance"]
${DATE_MANUFACTURE}    xpath=.//input[@id="dateofmanufacture"]
${NUMBER_SEATS}        xpath=.//select[@id="numberofseats"]
${FUEL_TYPE}           xpath=.//select[@id="fuel"]
${PAYLOAD}             xpath=.//input[@id="payload"]
${TOTAL_WEIGHT}        xpath=.//input[@id="totalweight"]
${LIST_PRICE}          xpath=.//input[@id="listprice"]
${ANNUAL_MILEAGE}      xpath=.//input[@id="annualmileage"]
${BTN_NEXT}            xpath=.//button[@id="nextenterinsurantdata"]

*** Keywords ***
Fill vehicle data form
    [Arguments]  ${VALUE_MAKE}  ${TXT_ENGINE_PERFORMANCE}  ${TXT_DATE_MANUFACTURE}  ${VALUE_NUMBER_SEATS}  ${VALUE_FUEL_TYPE}  ${TXT_PAYLOAD}  ${TXT_TOTAL_WEIGHT}  ${TXT_LIST_PRICE}  ${TXT_ANNUAL_MILEAGE}  
    
    Select camper
    Click Element  ${MAKE}
    Click Element  xpath=.//option[@value="${VALUE_MAKE}"]
    Input Text     ${ENGINE_PERFORMANCE}  ${TXT_ENGINE_PERFORMANCE}
    Input Text     ${DATE_MANUFACTURE}    ${TXT_DATE_MANUFACTURE}
    Click Element  ${NUMBER_SEATS}
    Click Element  xpath=.//option[@value="${VALUE_NUMBER_SEATS}"]
    Click Element  ${FUEL_TYPE}
    Click Element  xpath=.//option[@value="${VALUE_FUEL_TYPE}"]
    Input Text     ${PAYLOAD}  ${TXT_PAYLOAD}
    Input Text     ${TOTAL_WEIGHT}    ${TXT_TOTAL_WEIGHT}
    Input Text     ${LIST_PRICE}      ${TXT_LIST_PRICE}
    Input Text     ${ANNUAL_MILEAGE}  ${TXT_ANNUAL_MILEAGE}
    Click Button   ${BTN_NEXT}