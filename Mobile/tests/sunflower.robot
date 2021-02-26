*Settings*
Library     AppiumLibrary
Resource    ../resources/sunflower_kw.robot

Test Setup      Open Session    
Test Teardown   Close Session

*Test Cases*
Scenario: Adicionando uma planta ao jardim através do Add Plant
    Dado que estou na tela inicial do app Sunflower
    Quando clico em AddPlant
    E o app Sunflower direciona à lista
    E escolho adicionar maçãs em meu jardim
    E clico em maças, abre-se a tela de descrição da mesma
    E clico no botão "+"
    Então recebo a informação que a planta foi adicionada ao jardim
    
Scenario: Verificando se a planta foi adicionada ao jardim
    Dado que recebi a informação de planta adicionada ao jardim
    E clico no botão voltar na parte superior esquerda
    E novamente sou direcionado à lista
    Quando clico em My Garden
    Então vejo que a maçã foi adicionada em meu jardim

Scenario: Adicionando nova planta através do Plant List
    Dado que estou na tela My Garden com maçã adicionada à minha lista
    E clico em Plant List
    Quando clico, sou direcionado à lista de plantas
    E escolho adicionar beterraba ao meu jardim
    E clico no botão de "+" para adicionar
    Então, clicando nos botões voltar e My Garden, vejo que lá está beterraba adicionada.
