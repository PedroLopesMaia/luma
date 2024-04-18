*** Settings ***
Library    SeleniumLibrary
Resource   ../page_objects/register_page_object.resource

*** Keywords ***
I fill ${name} in name text field
    Input text                 ${NAME_TEXT_FIELD}         ${name}

I fill ${lastname} in lastname test field
    Input text                 ${LASTNAME_TEXT_FIELD}     ${lastname}

I fill ${email} in e-mail text field
    Input text                 ${EMAIL_TEXT_FIELD}        ${email}

I fill ${password} in password field
    Input password             ${PASSWORD_FIELD}          ${password}

I fill ${confirm_password} in confirm password field
    Input password             ${CONFIRM_PASSWORD_FIELD}  ${confirm_password}

I submit register form
    Click button               ${SUBMIT_BUTTON}