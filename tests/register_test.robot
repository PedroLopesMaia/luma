*** Settings ***
Documentation   Como cliente da loja virtual, desejo criar um
          ...   cadastro no sistema para poder visualizar meus
          ...   pedidos e listas de desejos.

Library         SeleniumLibrary
Resource        ../resources/config.resource
Resource        ../resources/pages/menu.resource
Resource        ../resources/pages/account.resource
Resource        ../resources/pages/register.resource

Test Setup      Open Browser    browser=${BROWSER}   url=${URL}
Test Teardown   Close Browser


*** Test Cases ***
Scenario: Success sign in as Natural Person
     Given I go to sign in page
     When I fill User in name text field
      And I fill Test in lastname test field
      And I fill usertestsadasdas-012@email.com in e-mail text field
      And I fill 14725228Bananas@112-012 in password field
      And I fill 14725228Bananas@112-012 in confirm password field
      And I submit register form
     Then I should see the Thank you for registering with Main Website Store. success message
      And I should see My Wish List
      And I should see My Orders

