# n ako nastavenia
*** Settings ***
Library    AppiumLibrary
Resource    keywords.robot
Resource    variables/global_variables.resource
*** Variables ***
${ulozto}    xpath=//android.widget.Button[@text,'Uložiť nastavenia']
${tema}      xpath=//android.view.View[@text,'Tmavá téma']android.widget.Switch
${synchronizacia}    xpath=//android.view.View[@text,'Tmavá téma']//android.widget.Switch
${zobrazenie}        xpath=//android.view.View[@text,'Tmavá téma']//android.widget.Switch
*** Keywords ***
PREPINANIE NASTAVENI ON OFF
    [Documentation]    Prepínanie tmavej temy vypinanie synchonizacie a zobrazovania zmien opakobvane
    FOR    ${counter}    IN RANGE    0    1000          
      Click on the xpath from arraylist if exist    @{nastenka_list[8]}
      Sleep    2s
      If the desired path to the element exist click on it   ${tema} 
      If the desired path to the element exist click on it   ${synchronizacia} 
      If the desired path to the element exist click on it   ${zobrazenie} 
      If the desired path to the element exist click on it   ${ulozto} 
     # Log To Console   ${counter}
    END
 

