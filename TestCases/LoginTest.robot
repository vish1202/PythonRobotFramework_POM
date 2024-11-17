*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com/v1/index.html
${username}     standard_user
${password}     secret_sauce

*** Test Cases ***
Login Test
    Open My Browser    ${url}   ${browser}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Verify Successful Login
    Close My Browser

Locket Out User
    Open My Browser    ${url}   ${browser}
    Input Username    locked_out_user
    Input Password    ${password}
    Click Login Button
    Verify Locked Out User

*** Keywords ***
