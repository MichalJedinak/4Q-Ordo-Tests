*** Settings ***
Resource    resources/variables/global_variables.resource 
Resource    resources/1a_open_app._keyword.robot
Resource    1a_complet_test.robot
Resource    resources/1n_change_seting_keyword.robot
Resource    resources/1o_new_order.robot
*** Variables ***
${lol}    ${0}
${cesta}      xpath=//android.view.View[@text,'list-view']//android.view.View//android.widget.ScrollView
*** Test Cases ***
Test     
     # Log To Console    ${servers[0]}
     # Log To Console    ${customers[0]}   
     # Log To Console    ${passwords[0]}
     # COMPLETE APPLICATION LOGIN    ${servers[0]}    ${customers[0]}    ${passwords[0]}
     #OPEN ORDO DEALER APPLICATION
     #OPEN ORDO CORNER APPLICATION

     # Open Application    http://localhost:4725/wd/hub
     # ...                 platformName=Android
     # ...         	     platformVersion=14
     # ...	               deviceName=RZCWB0Y0DRB
     # ...                 appPackage=sk.fourq.ordo.chrien.dealer
     # ...                 appActivity=sk.fourq.ordo.chrien.dealer.StartupActivity
     # ...                 automationName=Uiautomator2   
     # Log To Console      The application was opened correctly!
     # Click Element    ${objednavky}  
     # ${lol}    Set Variable    ${20}
     # ${cesta}    Set Variable    xpath=//android.view.View[@text,'list-view']//android.view.View//android.widget.ScrollView[${lol}]
     #  Log To Console    ${lol}
     #  Log To Console    ${cesta}
     Nastav index pre xpath    ${index_polozka}    ${polozka}   ${90} 
    #PREPINANIE NASTAVENI ON OFF
