***Settings***
Documentation                   Keywords genericas
Library                         AppiumLibrary

***Keywords***
Abrindo a aplicação
    Set Appium Timeout          15
    Open Application            http://localhost:4723/wd/hub
    ...                         automationName=UiAutomator2
    ...                         platformName=Android
    ...                         deviceName=Emulator-Lucas
    ...                         app=${EXECDIR}/app/sunflower.apk
    ...                         udid=emulator-5554
    Wait Until Page Contains    Sunflower

Fechando Apicação
    Close Application