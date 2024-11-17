*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/ProductKeywords.robot
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com/v1/index.html
${username}     standard_user
${password}     secret_sauce

*** Test Cases ***
Add Product To Cart
    Open My Browser    ${url}   ${browser}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Sleep    2
    Add To Cart
    Cart Count

Open Product Details
    Open My Browser    ${url}   ${browser}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Click On Product
    Page Should Contain    Sauce Labs Backpack