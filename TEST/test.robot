*** Settings ***
Library     SeleniumLibrary
Library     String

*** Variables ***
${URL}      https://automationintesting.online/
${BROWSER}  chrome

*** Test Cases  ***
Verify Website Availability
    ${profile}=    Generate Random String    8
    Open Browser    ${URL}    ${BROWSER}    options=add_argument(--user-data-dir=/tmp/chrome_profile_${profile})
    Wait Until Element Is Visible   //*[@id="root-container"]/div/section[1]/div/div/div/a
    Sleep   10s
