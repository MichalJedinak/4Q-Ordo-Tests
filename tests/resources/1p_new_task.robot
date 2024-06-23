*** Settings ***
Library    AppiumLibrary
Resource    variables/global_variables.resource
Resource    keywords.robot
*** Variables ***
${zavriet}    xpath=//android.view.View[@text,'entity-id:939067190030007,entity-status:N/A,entity-sync-status:N/A']//android.view.View//android.widget.Button[@text,'Zavrieť']
${nazov}    xpath=//android.view.View[@text,'entity-id:939067190030007,entity-status:N/A,entity-sync-status:N/A']//android.widget.ScrollView[0]//android.widget.EditText[@text,'Názov']
${popis}    xpath=//android.view.View[@text,'entity-id:939067190030007,entity-status:N/A,entity-sync-status:N/A']//android.widget.ScrollView[1]//android.widget.EditText[@text,'Popis']
${zaciatok}    xpath=//android.view.View[@text,'entity-id:939067190030007,entity-status:N/A,entity-sync-status:N/A']//android.widget.ScrollView[2]//android.widget.EditText[@text,'Začiatok'] 
${koniec}    xpath=//android.view.View[@text,'entity-id:939067190030007,entity-status:N/A,entity-sync-status:N/A']//android.widget.ScrollView[3]//android.widget.EditText[@text,'Koniec'] 
${zakaznik}    xpath=//android.view.View[@text,'entity-id:939067190030007,entity-status:N/A,entity-sync-status:N/A']//android.widget.ScrollView[4]//android.widget.EditText[@text,'Zákazník'] 
${typ}    xpath=//android.view.View[@text,'entity-id:939067190030007,entity-status:N/A,entity-sync-status:N/A']//android.widget.ScrollView[5]//android.widget.EditText[@text,'Typ'] 
${priorita}    xpath=//android.view.View[@text,'entity-id:939067190030007,entity-status:N/A,entity-sync-status:N/A']//android.widget.ScrollView[6]//android.widget.EditText[@text,'Štandardná, Priorita'] 
${opakovanie}    xpath=//android.view.View[@text,'entity-id:939067190030007,entity-status:N/A,entity-sync-status:N/A']//android.widget.ScrollView[7]//android.widget.EditText[@text,'Opakovanie'] 
${opakovat_do}    xpath=//android.view.View[@text,'entity-id:939067190030007,entity-status:N/A,entity-sync-status:N/A']//android.widget.ScrollView[8]//android.widget.EditText[@text,'Opakovať do'] 
${ulozit_ulohu}    xpath=//android.view.View[@text,'entity-id:939067190030007,entity-status:N/A,entity-sync-status:N/A']//android.widget.Button[@text,'Uložiť úlohu']

*** Keywords ***
Vytvorenie novej vseobecnej ulohy bez zakznika
    [Documentation]
    [Arguments] 
    If the desired path to the element from listarray exist click on it    @{nastenka_list[4]}
    Click on the xpath if exist    ${ulohy_plus_button}
    Insert text if clicked on existing path to the element    ${nazov}    Názov novej štandartnej úlohy
    Insert text if clicked on existing path to the element    ${popis}    Popis k novej úlohe * create by me
    # task na vyber datumu zaciatku a konca ulohy 
    Click on the xpath only if is visible    ${ulozit_ulohu}

Uprava vseobecnej ulohy
    [Documentation]
    [Arguments]
    If the desired path to the element exist click on it    ${vseobecne}
    # zistit ako sa dá získať xpath novovytvoreneho elemntu v teste z aplikacie bez 
    # vyhladania v uiautomatorvieweri
    # entity-id:127797190064603,entity-status:NEW,entity-sync-status:CREATEDnová ulohaStav: NováZačiatok: 25.06.2024 12:00