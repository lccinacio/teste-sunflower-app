# BDD 
Realizei a escrita dos testes automatizados utilizando o formato Gherkin.

# O projeto está organizado da seguinte maneira:

- O arquivo de teste está na pasta "tests".
- O arquivo com as keywords utilizadas está na pasta "resources/keywords".
- O arquivo "base.robot" é utilizado como atalho para importar os demais arquivos.

# Como Executar:

1. Abra o Appium e clique em "Start server".
2. Abra o emulador Android através do Android Studio.
2. Abra o projeto no VSCode diretamente na pasta "teste-sunflower-app".
3. Abra o terminal do VSCode e rode os seguintes comandos:
- pip install pipenv
- pipenv install
- pipenv shell
- pipenv run robot -d results tests/sunflower.robot