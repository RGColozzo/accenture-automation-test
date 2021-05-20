*** Settings ***
Library  Selenium2Library

Resource  ../common/common.robot
Resource  ../pageobject/vehicle_data_page.robot
Resource  ../pageobject/isurant_data_page.robot
Resource  ../pageobject/product_data_page.robot
Resource  ../pageobject/price_option_page.robot
Resource  ../pageobject/send_quote_page.robot

*** Keywords ***
Given that I access the site
    [Documentation]  Navegamos até a página inicial do site.
    Navigate to the home page

When I fill out all the forms and send the quote
    [Documentation]  Preencho todos os formulários e envio a cotação.
    [Arguments]  ${VALUE_MAKE}  ${TXT_ENGINE_PERFORMANCE}  ${TXT_DATE_MANUFACTURE}  ${VALUE_NUMBER_SEATS_1}  ${VALUE_FUEL_TYPE}  ${TXT_PAYLOAD}  ${TXT_TOTAL_WEIGHT}  ${TXT_LIST_PRICE}  ${TXT_ANNUAL_MILEAGE}  ${TXT_FIRST_NAME}  ${TXT_LAST_NAME}  ${TXT_BIRTH_DATE}  ${VALUE_COUNTRY}  ${TXT_ZIP_CODE}  ${VALUE_OCCUPATION}  ${TXT_START_DATE}  ${VALUE_INSURANCE_SUM}  ${VALUE_DAMAGE_INSURANCE}  ${TXT_EMAIL}  ${TXT_USERNAME}  ${TXT_PASSWORD}

    Fill vehicle data form  ${VALUE_MAKE}  ${TXT_ENGINE_PERFORMANCE}  ${TXT_DATE_MANUFACTURE}  ${VALUE_NUMBER_SEATS_1}  ${VALUE_FUEL_TYPE}  ${TXT_PAYLOAD}  ${TXT_TOTAL_WEIGHT}  ${TXT_LIST_PRICE}  ${TXT_ANNUAL_MILEAGE}
    Fill insurant data form  ${TXT_FIRST_NAME}  ${TXT_LAST_NAME}  ${TXT_BIRTH_DATE}  ${VALUE_COUNTRY}  ${TXT_ZIP_CODE}  ${VALUE_OCCUPATION}
    Fill product data form  ${TXT_START_DATE}  ${VALUE_INSURANCE_SUM}  ${VALUE_DAMAGE_INSURANCE}
    Select price option
    Send quote  ${TXT_EMAIL}  ${TXT_USERNAME}  ${TXT_PASSWORD}

Then I must see the success message in my screen
    [Documentation]  Vejo a mensagem de sucesso ao enviar cotação por e-mail.
    Success message should be visible