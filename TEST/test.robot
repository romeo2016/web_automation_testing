*** Settings ***
Library     SeleniumLibrary



*** Test Cases  ***
Verify Website Availability
    Open Browser    https://automationintesting.online/     chrome
    Wait Until Element Is Visible   //*[@id="root-container"]/div/section[1]/div/div/div/a
    Sleep   10s

#update