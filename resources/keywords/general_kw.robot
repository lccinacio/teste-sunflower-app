***Settings***
Documentation                   Keywords genericas
Library                         AppiumLibrary

***Keywords***
abrindo a aplicação
    Set Appium Timeout          15
    Open Application            http://localhost:4723/wd/hub
    ...                         automationName=UiAutomator2
    ...                         platformName=Android
    ...                         deviceName=Emulator-Lucas
    ...                         app=${EXECDIR}/app/sunflower.apk
    ...                         udid=emulator-5554
    Wait Until Page Contains    Sunflower

fechando Apicação
    Close Application

clicando no texto
    [Arguments]         ${text}
    FOR     ${i}    IN RANGE        10
        ${var}      Run Keyword And Return Status           Page Should Contain Text       ${text}
        Exit For Loop If            ${var}
        Swipe By Percent            50.09       65       50.09     40
    END
    Click Text          ${text}  
