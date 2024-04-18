*** Settings ***
Library    SeleniumLibrary
Resource   ../page_objects/menu_page_object.resource

*** Keywords ***
I go to sign in page
    Click Link                 ${CREATE_ACCOUNT}