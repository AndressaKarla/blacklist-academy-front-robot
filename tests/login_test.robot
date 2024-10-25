*** Settings ***
Documentation    Arquivo com os casos de testes da funcionalidade de login

Resource            ../resources/base.resource
Resource            ../resources/keywords/login_keyword.robot

Test Teardown       Encerrar sessão


*** Test Cases ***
Login (SYSADMIN) - Email e Senha (corretos) - Validar apresentar a tela Home
    [Tags]    login_sysadmin    regressao
    Acessar a tela de Login do ERP do Qa.Coders Academy
    Obter dados usuario sydadmin estático
    Informar os campos de email e senha de um usuário SYSADMIN    email=${EMAIL_SYSADMIN}    senha=${SENHA}
    Clicar no botão "ENTRAR"
    Apresentar a tela Home

Login (ADMIN) - Email e Senha (corretos) - Validar apresentar a tela Home
    [Tags]    login_admin    regressao
    Acessar a tela de Login do ERP do Qa.Coders Academy
    Gerar e obter dados usuario admin dinâmico
    Informar os campos de email e senha de um usuário ADMIN    email_admin=${EMAIL_ADMIN}    senha_admin=${SENHA_CONFIRME_A_SENHA}
    Clicar no botão "ENTRAR"
    Apresentar a tela Home
