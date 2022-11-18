***Settings***
Documentation           Keywords para os testes automatizados do Sunflower-App.
Library                 AppiumLibrary
Library                 BuiltIn
Resource                ../base.robot

***Keywords***
Dado que estou na home do app
    Wait Until Page Contains    Sunflower

click on apple plant     
    Set Suite Variable                  ${plant_elements}

    Wait Until Page Contains            Apple
    Click Element                       ${plant_elements.plant_one}      
    Wait Until Element Is Visible       id=com.google.samples.apps.sunflower:id/fab

user click in back button
    Set Suite Variable                  ${buttons}
    Wait Until Page Contains            Apple
    Click Element                       ${buttons.back_btn}

click on bougavilie plant
    Wait Until Page Contains            Apple
    Click Element                       ${plant_elements.plant_three}



