*** Settings ***
Library     SeleniumLibrary

Resource    ../base.resource

*** Variables ***
${EMPRESAS_XPATH}  //div[contains(@class, 'MuiListItemText-root css-1tsvksn') and contains(@id,'Cadastros')]
${CADASTROS_XPATH}  //div[contains(@class, 'MuiListItemText-root css-1tsvksn') and contains(@id,'Cadastros')]
${NOME_COLUNA_XPATH}   //div[contains(@class, 'css-wgzttu') and text()='Nome']  # XPath para a coluna "Nome"


*** Keywords ***
Clicar na opção Cadastros
    Wait Until Element Is Visible    ${CADASTROS_XPATH}
    Scroll Element Into View    ${CADASTROS_XPATH}
    Wait Until Element Is Enabled    ${CADASTROS_XPATH}
    Click Element    ${CADASTROS_XPATH}

Clicar no botão Empresa
    Go To    ${URL}/company   
    Click Element    ${EMPRESAS_XPATH}
    Sleep   10  # Aguarda 5 segundos para visualizar a tela
    Wait Until Element Is Visible    ${NOME_COLUNA_XPATH}  # Aguarda até a coluna "Nome" estar visível
