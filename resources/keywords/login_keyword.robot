*** Settings ***
Documentation    Arquivo com variáveis locais e palavras-chave da funcionalidade de login

Resource    ../../resources/base.resource


*** Variables ***
${campo_email}      id=email
${campo_senha}      css=input[name="password"]
${botao_entrar}     css=button[type="submit"]


*** Keywords ***
Acessar a tela de Login do ERP do Qa.Coders Academy
    Criar sessão front
    Go To    ${URL}/login

Informar os campos de email e senha de um usuário SYSADMIN
    [Arguments]    ${email}    ${senha}
    Wait Until Element Is Visible    ${campo_email}
    Click Element    ${campo_email}
    Input Text    ${campo_email}    ${email}

    Wait Until Element Is Visible    ${campo_senha}
    Click Element    ${campo_senha}
    Input Text    ${campo_senha}    ${senha}

Informar os campos de email e senha de um usuário ADMIN
    [Arguments]    ${email_admin}    ${senha_admin}
    Wait Until Element Is Visible    ${campo_email}
    Click Element    ${campo_email}
    Input Text    ${campo_email}    ${email_admin}

    Wait Until Element Is Visible    ${campo_senha}
    Click Element    ${campo_senha}
    Input Text    ${campo_senha}    ${senha_admin}

Clicar no botão "ENTRAR"
    Wait Until Element Is Visible    ${botao_entrar}
    Click Element    ${botao_entrar}

Apresentar a tela Home
    Sleep    ${TIMEOUT}
    Location Should Be    ${URL}/home

Realizar login (ADMIN)
    Acessar a tela de Login do ERP do Qa.Coders Academy
    Gerar e obter dados usuario admin dinâmico
    Informar os campos de email e senha de um usuário ADMIN    email_admin=${EMAIL_ADMIN}    senha_admin=${SENHA_CONFIRME_A_SENHA}
    Clicar no botão "ENTRAR"
    Apresentar a tela Home
