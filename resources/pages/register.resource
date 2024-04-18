*** Settings ***
Library    SeleniumLibrary
Resource   ../page_objects/register_page_object.resource

*** Keywords ***
I go to sign in page
    Click Link                 ${CREATE_ACCOUNT}

I fill register form
    Input text                 ${NAME_TEXT_FIELD}         User
    Input text                 ${LASTNAME_TEXT_FIELD}     Test
    Input text                 ${EMAIL_TEXT_FIELD}        usertestsadasdas-009@email.com
    Input password             ${PASSWORD_FIELD}          14725228Bananas@112-009
    Input password             ${CONFIRM_PASSWORD_FIELD}  14725228Bananas@112-009

I submit register form
    Click button               ${SUBMIT_BUTTON}

I should see a success message
    Wait until page contains   ${SUCCESS_MESSAGE}

I should see My Wish List
    Page should contain Link   ${MY_ORDERS_LINK}

I should see My Orders
    Page should contain Link   ${MY_WISHLIST_LINK}