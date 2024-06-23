*** Settings ***
Library    AppiumLibrary
*** Keywords ***
Click on the xpath if exist
    [Documentation]     arg = xpath vybranemo menu s nastenka napr. nastavenia arg_index je index pre vybrané munu s listu nástrenky
      # ... napríklad chceme vybrať objednávky arg bude ${objednaky}  a index 0 
    [Arguments]    ${xpath}
    Wait Until Page Contains Element    ${xpath} 
    Click Element    ${xpath}
Click on the xpath only if is visible
    [Documentation]    iba ak je xpath vyditelna tak klikne na element inak...
    ...   napíše spravu 
    [Arguments]    ${xpath}
   ${isvisible}   Run Keyword And Ignore Error    Wait Until Element Is Visible    ${xpath}    timeout=10s
  #  ${isvisible}     Wait Until Element Is Visible    ${xpath}    timeout=10s
    IF    ${isvisible}
        Click Element    ${xpath}
    ELSE
        Log To Console    message!!! xpath '${xpath}' is visible it`s : ${isvisible}'
    END
    
Click on the xpath from arraylist if exist
    [Documentation]     arg = xpath vybranemo menu s nastenka napr. nastavenia arg_index je index pre vybrané munu s listu nástrenky
      # ... napríklad chceme vybrať objednávky arg bude ${objednaky}  a index 0 
    [Arguments]    ${arraylist[index]}
    Wait Until Page Contains Element    ${arraylist[index]}
    Click Element    @{arraylist[index]}
If the desired path to the element exist click on it
    [Documentation]    Pokiaľ daný xpath k elementu existuje kliknii na element  argument je samotna cesta k elemntu 
    [Arguments]    ${xpath}
    ${exist}    Run Keyword And Return Status    Wait Until Page Contains Element   ${xpath}    timeout=8s
    Run Keyword If    ${exist}    Click Element    ${xpath}
If the desired path to the element from listarray exist click on it
    [Documentation]    Pokiaľ daný xpath k elementu z listu ciest existuje kliknii na element  argument je samotna cesta k elemntu 
    [Arguments]    @{arraylist[index]}
    ${exist}    Run Keyword And Return Status    Wait Until Page Contains Element   ${arraylist[index]}    timeout=8s
    Run Keyword If    ${exist}    Click Element    ${arraylist[index]}
If the desired path to the element visible click on it
      [Documentation]    Pokiaľ daný xpath k elementu je viditeľný kliknii na element  argument je samotna cesta k elemntu 
      [Arguments]    ${xpath}
      ${exist}    Run Keyword And Return Status    Wait Until Element Is Visible   ${xpath}    timeout=8s
      Run Keyword If    ${exist}    Click Element    ${xpath}
If the desired path to the element from listarray is visible click on it
    [Documentation]    Pokiaľ daný xpath k elementu z listu ciest je viditelný kliknii na element  argument je samotna cesta k elemntu 
    [Arguments]    ${array[index]}
    ${exist}    Run Keyword And Return Status    Wait Until Page Contains Element   ${array[index]}    timeout=8s
    Run Keyword If    ${exist}    Click Element    ${array[index]}
Neviem ako ho nazvať
    [Documentation]
    [Arguments]    ${xpath}    ${array_1[index]}
    If the desired path to the element exist click on it    ${xpath}
    Click on the xpath from arraylist if exist    ${array_1[index]}

Insert text if clicked on existing path to the element
    [Documentation]    Vlož text ak bolo kliknute na existujucu cestu k elemntu ...
    ...                argument  cesta a text na vlozenie
    [Arguments]    ${xpath}    ${text}
    Click on the xpath if exist    ${xpath}
    Input Text    ${xpath}    ${text}
    Sleep    2s
    Log To Console    Na ceste: '${xpath}' bol vložený text :'${text}'