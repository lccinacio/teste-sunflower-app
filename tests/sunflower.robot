***Settings***
Documentation           Testes automatizados para o Sunflower-App.
Resource                ../resources/base.robot
Suite Setup             abrindo a aplicação
Suite Teardown          fechando Apicação
Test Teardown           Capture Page Screenshot

***Test Cases***
Cenário-0001: Validando a pagina inicial do app
    Dado que estou na home do app
    clicando no texto         ADD PLANT
    click on apple plant 
    user click in back button
    click on bougavilie plant
    #clicando no texto         Tomato
