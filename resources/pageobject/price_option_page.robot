*** Settings ***
Library  Selenium2Library

Resource  ../common/common.robot

*** Keywords ***
Select price option
    Execute Javascript  document.getElementById('selectultimate').click()
    Execute Javascript  document.getElementById('nextsendquote').click()