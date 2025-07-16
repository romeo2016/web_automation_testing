*** Settings ***
Library     SeleniumLibrary



*** Test Cases  ***
Verify Website Availability
    Open Browser    ${URL}    ${BROWSER}    options=add_argument(--user-data-dir=/tmp/chrome_profile_${RANDOM})
    Wait Until Element Is Visible   //*[@id="root-container"]/div/section[1]/div/div/div/a
    Sleep   10s

#update