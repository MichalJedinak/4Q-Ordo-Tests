*** Settings ***
Library    AppiumLibrary
Resource   variables/1a_variables.resource

*** Keywords ***
OPEN ORDO DEALER APPLICATION
    [Documentation]      The Aplication opening
    Open Application	 ${URL_APPIUM_SERVER}
     ...                 platformName=${PLATFORM}
     ...         	     platformVersion=${NUMBER}
     ...	             deviceName=${ID}
     ...                 appPackage=${PACKAGE}
     ...                 appActivity=${ACTIVITY}
     ...                 automationName=${UI_VIEWER}   
     Log To Console     The ORDO CHRIEN app was opened correctly!  
OPEN ORDO CORNER APPLICATION
    [Documentation]      The Aplication opening
    Open Application	 ${URL_APPIUM_SERVER}
     ...                 platformName=${PLATFORM}
     ...         	     platformVersion=${NUMBER}
     ...	             deviceName=${ID}
     ...                 appPackage=${Corner}
     ...                 appActivity=${Corner_ACTIVITY}
     ...                 automationName=${UI_VIEWER}   
     Log To Console     The ORDO CORNER application was opened correctly!