*** Settings ***
Documentation   Como cliente da loja virtual, desejo criar um
          ...   cadastro no sistema para poder visualizar meus
          ...   pedidos e listas de desejos.

Library         SeleniumLibrary
Resource        ../resources/config.resource
Resource        ../resources/page_objects/menu_page_object.resource
Resource        ../resources/page_objects/account_page_object.resource
Resource        ../resources/page_objects/register_page_object.resource

Test Setup      Open Browser    browser=${BROWSER}   url=${URL}
Test Teardown   Close Browser


*** Test Cases ***
Scenario: Success sign in as Natural Person
    Given Click Link                 ${CREATE_ACCOUNT}
    When Input text                  ${NAME_TEXT_FIELD}         User
    And Input text                   ${LASTNAME_TEXT_FIELD}     Test
    And Input text                   ${EMAIL_TEXT_FIELD}        usertestsadasdas-008@email.com
    And Input password               ${PASSWORD_FIELD}          14725228Bananas@112-008
    And Input password               ${CONFIRM_PASSWORD_FIELD}  14725228Bananas@112-008
    And Click button                 ${SUBMIT_BUTTON}
    Then Wait until page contains    ${SUCCESS_MESSAGE}
    And Page should contain Link     ${MY_ORDERS_LINK}
    And Page should contain Link     ${MY_WISHLIST_LINK}
