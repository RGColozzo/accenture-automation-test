*** Settings ***
Resource  ../resources/steps/steps.robot

Test Teardown  Close navigation

*** Test Cases ***
Case 1: Fill forms and send quote
    Given that I access the site
    When I fill out all the forms and send the quote  ${VALUE_MAKE}  ${TXT_ENGINE_PERFORMANCE}  ${TXT_DATE_MANUFACTURE}  ${VALUE_NUMBER_SEATS}  ${VALUE_FUEL_TYPE}  ${TXT_PAYLOAD}  ${TXT_TOTAL_WEIGHT}  ${TXT_LIST_PRICE}  ${TXT_ANNUAL_MILEAGE}  ${TXT_FIRST_NAME}  ${TXT_LAST_NAME}  ${TXT_BIRTH_DATE}  ${VALUE_COUNTRY}  ${TXT_ZIP_CODE}  ${VALUE_OCCUPATION}  ${TXT_START_DATE}  ${VALUE_INSURANCE_SUM}  ${VALUE_DAMAGE_INSURANCE}  ${TXT_EMAIL}  ${TXT_USERNAME}  ${TXT_PASSWORD}
    Then I must see the success message in my screen