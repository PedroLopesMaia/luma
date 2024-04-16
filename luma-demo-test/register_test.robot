*** Settings ***
Documentation   Como cliente da loja virtual, desejo criar um
          ...   cadastro no sistema para poder visualizar meus
          ...   pedidos e listas de desejos.

Library         SeleniumLibrary

Test Teardown    Close Browser

*** Test Cases ***
Scenario: Success sign in as Natural Person
    Given Open browser    browser=firefox
    And Go to           url=https://magento.softwaretestingboard.com/
    And Click Link      Create an Account
    When Input text      id: firstname   Lucas
    And Input text      id: lastname    Cavalcanti
    And Input text      id: email_address   usertestsadasdas-005@email.com
    And Input password    id: password      14725228Bananas@112-005
    And Input password    id: password-confirmation     14725228Bananas@112-005
    And Click button     class: submit
    Then Wait until page contains    Thank you for registering with Main Website Store.
    And Page should contain Link     https://magento.softwaretestingboard.com/sales/order/history/
    And Page should contain Link     https://magento.softwaretestingboard.com/wishlist/
