*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/ProductPageLocators.py

*** Keywords ***
Click Burger Menu
    Click Element    ${txt_burgermenu}

Add To Cart
    # [Arguments]    {product_name}
    Click Element   ${txt_addtocart}

Click On Product
    Click Element    ${txt_productLabel}

Cart Count
    ${count}=    Get Element Count    ${txt_cartcount}
    Log To Console    ${count}
    RETURN  ${count}
