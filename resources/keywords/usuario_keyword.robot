*** Settings ***
Documentation    Arquivo com variáveis locais e palavras-chave da funcionalidade de usuário

Resource    ../../resources/base.resource

*** Variables ***
${menu_cadastros}    id=Cadastros
${menu_usuarios}    id=Usuários
${botao_editar}    (//button[@id='edit'])[1]
${modal_editar_cadastro}    css=div.css-g7173l > div > form > h5


*** Keywords ***
Clicar no menu "Cadastros > Usuários"
    Wait Until Element Is Visible    ${menu_cadastros}
    Click Element    ${menu_cadastros}

    Wait Until Element Is Visible    ${menu_usuarios}
    Click Element    ${menu_usuarios}
    
    Sleep    ${TIMEOUT}
    Location Should Be    ${URL}/user

Clicar no botão "Editar"
    Wait Until Element Is Visible    ${botao_editar}
    Click Element    ${botao_editar}

Apresentar o modal "Editar Cadastro"
    Wait Until Element Is Visible    ${modal_editar_cadastro}