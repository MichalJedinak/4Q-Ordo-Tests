*** Settings ***
Resource    resources/1a_open_app._keyword.robot
Resource    resources/1b_insert_login_info.resource
Library    AppiumLibrary
*** Keywords ***
COMPLETE APPLICATION LOGIN
    [Documentation]    Complete application login whits sing in ti the app arg
    [Arguments]    ${server}    ${name}    ${password}
    OPEN ORDO DEALER APPLICATION
    Sleep    15s
    SING IN TO THE APP TASK    ${server}    ${name}    ${password}
    Log    Complete app login went fine!