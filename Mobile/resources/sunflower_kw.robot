*Settings*
Library     AppiumLibrary
Resource    variaveis.robot

*Keywords*
Open Session
    Set Appium Timeout  5
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 app=${CURDIR}\\app\\sunflower.apk
    ...                 udid=emulator-5554 
Close Session
    Close Application

Dado que estou na tela inicial do app Sunflower
    Wait Until Page Contains        Your garden is empty   

Quando clico em AddPlant
    Click Element                   ${ADDPLANTA}

E o app Sunflower direciona à lista
    Wait Until Element Is Visible   ${BOTAO_LISTA}

E escolho adicionar maçãs em meu jardim
    Click Element                   ${MAÇA}

E clico em maças, abre-se a tela de descrição da mesma
    Wait Until Element Is Visible   ${BOTAO_MAIS}

E clico no botão "+"
    Click Element                   ${BOTAO_MAIS}
    
Então recebo a informação que a planta foi adicionada ao jardim
    Wait Until Page Contains        Added plant to garden

#2º cenário de teste:

Dado que recebi a informação de planta adicionada ao jardim
    Wait Until Page Contains        Your garden is empty   
    Click Element                   ${ADDPLANTA}
    Wait Until Element Is Visible   ${BOTAO_LISTA}
    Click Element                   ${MAÇA}
    Wait Until Element Is Visible   ${BOTAO_MAIS}
    Click Element                   ${BOTAO_MAIS}
    Wait Until Page Contains        Added plant to garden

E clico no botão voltar na parte superior esquerda

    Click Element                   ${BOTAO_VOLTAR}
    
E novamente sou direcionado à lista
    Wait Until Element Is Visible   ${BOTAO_LISTA}

Quando clico em My Garden
    Click Element                   ${BOTAO_JARDIM}

Então vejo que a maçã foi adicionada em meu jardim
    Wait Until Element Is Visible   ${MEUJARDIM}

#3º cenário de teste:

Dado que estou na tela My Garden com maçã adicionada à minha lista

    Wait Until Page Contains        Your garden is empty   
    Click Element                   ${ADDPLANTA}
    Wait Until Element Is Visible   ${BOTAO_LISTA}
    Click Element                   ${MAÇA}
    Wait Until Element Is Visible   ${BOTAO_MAIS}
    Click Element                   ${BOTAO_MAIS}
    Wait Until Page Contains        Added plant to garden
    Click Element                   ${BOTAO_VOLTAR}
    Wait Until Element Is Visible   ${BOTAO_LISTA}
    Click Element                   ${BOTAO_JARDIM}
    Wait Until Element Is Visible   ${MEUJARDIM}

E clico em Plant List
   Click Element                    ${BOTAO_LISTA} 

Quando clico, sou direcionado à lista de plantas

    Wait Until Element Is Visible   ${LISTA_PLANTA}

E escolho adicionar beterraba ao meu jardim
    Click Element                   ${BEET}
    Wait Until Element Is Visible   ${BOTAO_MAIS}
    
E clico no botão de "+" para adicionar
    Click Element                   ${BOTAO_MAIS}
    Wait Until Page Contains        Added plant to garden

Então, clicando nos botões voltar e My Garden, vejo que lá está beterraba adicionada.
    Click Element                   ${BOTAO_VOLTAR}
    Wait Until Element Is Visible   ${LISTA_PLANTA}
    Click Element                   ${BOTAO_JARDIM}
    Wait Until Element Is Visible   ${MEUJARDIM}





