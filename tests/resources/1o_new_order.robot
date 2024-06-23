*** Settings ***
Library    AppiumLibrary
Resource   keywords.robot
Resource   variables/global_variables.resource
*** Variables ***
${ulozit_objednavku}    xpath=//android.widget.Button[@text,'Uložiť objednávku' and @index,'1']

${select_zakaznik}    xpath=//android.widget.EditText[@text,'' and @index,'1']

${select_datum}    xpath=//android.widget.EditText[@text,'25.06.2024, Dátum dodania' and @index,'1']
@{date_array}
${index_xpath?}    ${0}
${zakaznik}     xpath=//android.view.View[@text,'list-view']//android.view.View//android.widget.ScrollView[${index_xpath?}]

${select_platba}    xpath=//android.widget.EditText[@text,'Forma úhrady' and @index,'2']
${hotovost}    xpath=//android.view.View[@text,'entity-id:CASH,entity-status:N/A,entity-sync-status:SYNCEDHotovosť']
${prevod}    xpath=//android.view.View[@text,'entity-id:TRANSFER_ORDER,entity-status:N/A,entity-sync-status:SYNCEDPrevodný príkaz']
@{platba_arraylist}    ${hotovost}  ${prevod}

${select_dodanie}    xpath=//android.widget.EditText[@text,'Štandardne, Spôsob dodania' and @index,'3']
${osobne}    xpath=//android.view.View[@text,'entity-id:PERSONAL_PICKUP,entity-status:N/A,entity-sync-status:N/AOsobné prebratie']
${standartne}    xpath=//android.view.View[@text,'entity-id:STANDARD,entity-status:N/A,entity-sync-status:N/AŠtandardne']
@{dodanie_arraylist}    ${osobne}  ${standartne}

${select_poznamka}    xpath=//android.widget.EditText[@text,'Poznámka' and @index,'4']
*** Keywords ***
Vytvorenie novej nedokončenej objednávky bez zadania položiek
    [Documentation]
    [Arguments]
    Click on the xpath from arraylist if exist    @{nastenka_list[0]}
    Click Element    ${plus}
    Vyber si svojho zakaznika    ${select_zakaznik}    ${zakaznik}    ${20}
    Click on the xpath if exist    ${ulozit_objednavku}
Nastav index pre xpath
    [Documentation]   nastavenie hodnoty pre premennú kde hodnotou má byť index ...
    ...               ktorý sa nastavý  ako index v xpath  ...
    ...               
    [Arguments]    ${variable}    ${xpath}    ${index}
    ${variable}   Set Variable    ${index}
    ${xpath...}   Create List    ${xpath}    [${index}]
    ${xpath}    Set Variable     ${xpath...}[0]${xpath...}[1]
    Log To Console    '${index}'
    Log To Console    '${xpath}'
    RETURN    ${xpath}


Pridanie položky k objednavke 
    [Arguments]    
    Click on the xpath if exist    ${polozky}
    Click on the xpath if exist    ${pridaj_polozku}
    Sleep    2s
    Nastav index pre xpath    ${index_polozka}    ${polozka}    ${0}
    If the desired path to the element exist click on it    ${polozka}
    Zapis text alebo pocet    ${mnozstvo}    2
    Sleep    1s
    Click Element    ${uloz_polozku}
    Click on the xpath if exist    ${detail}
    Click on the xpath if exist    ${potvrd_objednavku}
    Click on the xpath if exist    ${dalej}
    If the desired path to the element visible click on it    ${okno_potvrdenie_potvrdit}
    If the desired path to the element visible click on it    ${okno_pokracovatbezpolohy}

Zahodenie novej nedokončenej objednávky bez položiek
    [Documentation]
    [Arguments]
    Click on the xpath from arraylist if exist    @{nastenka_list[0]}
    Click Element    ${plus}
    Vyber si svojho zakaznika    ${select_zakaznik}    ${zakaznik}    ${20}
    Sleep    2s
    Zahod zmeny a neurob ojebavku
Vyber si svojho zakaznika
    [Documentation]    predpoklad že sa bude dať pomocou indexu v xpath vyberať zakaznika...
    ...               a nie potrebne použiť zoznam zakaznikov ??,   ...
    ...  prva xpath je na intut s zakaznikm nasledne pokus o pouzitie cesty s upravou indexu
    ...   a treti je samotny index pre cestu, index je ${index_xpath?}
    [Arguments]    ${xpath_1}   ${xpath_2}    ${i}     #xpath  a index s litu sposoboov 
    ${index_xpath?}    Set Variable    ${i}
    Log To Console    ${xpath2}
    If the desired path to the element exist click on it    ${xpath_1}
    Click on the xpath if exist    ${xpath_2}

Zahod zmeny a neurob ojebavku
    [Documentation]    task na zahodenie vytvorenia objednávky
    Click on the xpath if exist    xpath=//android.widget.Button[@text,'Zavrieť']    
    Click on the xpath only if is visible    xpath=//android.widget.Button[@text,'Zahodiť zmeny a odísť']    
Zapis text alebo pocet
    [Documentation]
    [Arguments]    ${xpath}    ${text}
    If the desired path to the element exist click on it    ${xpath}
    Input Text    ${xpath}    ${text}
#   xpath=//android.view.View[@text,'']  28, piatok 28. júna 2024