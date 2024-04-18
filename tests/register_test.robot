*** Settings ***
Documentation   Como cliente da loja virtual, desejo criar um
          ...   cadastro no sistema para poder visualizar meus
          ...   pedidos e listas de desejos.

Library         SeleniumLibrary
Resource        ../resources/config.resource
Resource        ../resources/page_objects/menu_page_object.resource
Resource        ../resources/page_objects/account_page_object.resource
Resource        ../resources/pages/register.resource

Test Setup      Open Browser    browser=${BROWSER}   url=${URL}
Test Teardown   Close Browser


*** Test Cases ***
Scenario: Success sign in as Natural Person
     Given I go to sign in page
     When I fill register form
      And I submit register form
     Then I should see a success message
      And I should see My Wish List
      And I should see My Orders

