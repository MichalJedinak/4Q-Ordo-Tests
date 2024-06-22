*** Settings ***
Library    AppiumLibrary
Resource   variables/1b_variables.resource
*** Keywords ***
SING IN TO THE APP TASK 
    [Documentation]    Login to the app using arguments : Address of the Server , name of the merchant and Password.
    [Arguments]    ${server}    ${name}    ${password}
    ${element_server_address_exist}=    Run Keyword And Return Status    Wait Until Element Is Visible   ${server_address}    
    Run Keyword If    ${element_server_address_exist}    Log To Console    '${element_server_address_exist}'
    Click Text    Adresa Ordo servera
    Sleep    1s
    Input Text    xpath=//android.view.View[4]//android.widget.EditText[@text,'https://Adresa Ordo servera'][1]    text=chrien.4q.si

    ${element_login_name_exist}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${login_name}    timeout=8s
    Run Keyword If    ${element_login_name_exist}    Click Element    ${login_name}
    Sleep    2s
    Input Text    ${login_name}    ${name}

    ${element_login_password_exist}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${login_name}    timeout=8s
    Run Keyword If    ${element_login_password_exist}    Click Element    ${login_password}
    Sleep    2s
    Input Text    ${login_password}    ${password}
    Sleep    1s
    Click Element    ${login_button}
    