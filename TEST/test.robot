*** Settings ***
Library     SeleniumLibrary
Library     String

*** Variables ***
${URL}      https://automationintesting.online/
${BROWSER}  chrome

*** Test Cases  ***
Verify Website Availability
    ${profile}=    Generate Random String    8
    Ope Browser     ${URL}    ${BROWSER}   options=add_argument("--disable-gpu");add_argument("--no-sandbox");add_argument("--disable-dev-shm-usage");add_argument("--headless=new")  
    Sleep   10s
