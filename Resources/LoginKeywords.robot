*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/LoginPageLocators.py

*** Variables ***
${url}  https://www.saucedemo.com/v1/index.html
${browser}  chrome

*** Keywords ***
Open My Browser
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}   ${browser}
    Maximize Browser Window

Input Username
    [Arguments]    ${username}
    Input Text    ${txt_LoginUsername}  ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${txt_LoginPassword}  ${password}

Click Login Button
    Click Element    ${txt_LoginButton}

Verify Successful Login
    Page Should Contain    Products

Verify Locked out user
    Page Should Contain    Epic sadface: Sorry, this user has been locked out.

Close My Browser
    Close All Browsers
