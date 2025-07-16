*** Settings ***
Library     SeleniumLibrary
Library     String

*** Variables ***
${URL}      https://automationintesting.online/
${BROWSER}  chrome

*** Test Cases  ***
Verify Website Availability
    Open Browser     ${URL}    ${BROWSER}   options=add_argument("--disable-gpu");add_argument("--no-sandbox");add_argument("--disable-dev-shm-usage");add_argument("--headless=new")  
    Sleep   10s
