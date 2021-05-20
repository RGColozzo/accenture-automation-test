*** Settings ***
Library  Selenium2Library

Resource  ../auth/auth.robot

*** Variables ***
${LOGO}    xpath=.//img[@id="tricentis_logo"]
${CAMPER}  xpath=.//a[@id="nav_camper"]

*** Keywords ***
Close navigation
    Close Browser

Navigate to the home page
    [Documentation]  Navegar até a página inicial do site.
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible  ${LOGO}

Select camper
    Click Element  ${CAMPER}