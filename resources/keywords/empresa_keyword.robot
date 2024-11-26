*** Settings ***
Documentation    Arquivo com variáveis locais e palavras-chave da funcionalidade de empresa

Resource    ../../resources/base.resource

*** Variables ***
${menu_cadastros}    id=Cadastros
${menu_empresa}    id=Empresa

*** Keywords ***
Clicar no menu "Cadastros > Empresa"
    Wait Until Element Is Visible    ${menu_cadastros}
    Click Element    ${menu_cadastros}

    Wait Until Element Is Visible    ${menu_empresa}
    Click Element    ${menu_empresa}

Apresentar a tela "Empresa"
    Sleep    ${TIMEOUT} 
    Location Should Be    ${URL}/company