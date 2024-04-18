*** Settings ***
Library    SeleniumLibrary
Resource   ../page_objects/account_page_object.resource

*** Keywords ***
I should see the ${success_message} success message
    Wait until page contains   ${success_message}

I should see My Wish List
    Page should contain Link   ${MY_ORDERS_LINK}

I should see My Orders
    Page should contain Link   ${MY_WISHLIST_LINK}