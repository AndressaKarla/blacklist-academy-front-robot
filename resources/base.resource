*** Settings ***
Documentation       Arquivo base com inicializações

Library             SeleniumLibrary
Library             RequestsLibrary
Library             helpers.py
Resource            env.resource
Variables           environments/${ENV}.json


*** Variables ***
${URL}                  ${base_url}
${URI}                  ${base_uri}
${BROWSER_CHROME}       chrome
${BROWSER_FIREFOX}      firefox
${HEADLESS_CHROME}      headlesschrome
${HEADLESS_FIREFOX}     headlessfirefox
${TIMEOUT}              3


*** Keywords ***
Criar sessão front
    IF    '${BROWSER}' == 'headlesschrome'
        Open Browser    ${URL}    ${HEADLESS_CHROME}
    ELSE IF    '${BROWSER}' == 'headlessfirefox'
        Open Browser    ${URL}    ${HEADLESS_FIREFOX}
    ELSE IF    '${BROWSER}' == 'firefox'
        Open Browser    ${URL}    ${BROWSER_FIREFOX}
    ELSE
        Open Browser    ${URL}    ${BROWSER_CHROME}
    END

    Set Window Size    1280    720

Criar sessão api
    ${headers}    Create Dictionary    Content-Type=application/json
    Create Session    alias=APIBlackList    url=${URI}    headers=${headers}    disable_warnings=1

Encerrar sessão
    Capture Page Screenshot
    Close Browser

Carregar usuario fixture
    ${usuario_fixture}    Carregar Fixture    usuario
    Set Test Variable    ${USUARIO_FIXTURE}    ${usuario_fixture}

Obter email usuario sysadmin estático
    Set Test Variable    ${EMAIL_SYSADMIN}    ${USUARIO_FIXTURE['sysadmin_valido']['email_valido']}

Obter senha usuario sysadmin estático
    Set Test Variable    ${SENHA}    ${USUARIO_FIXTURE['sysadmin_valido']['senha_valida']}

Obter dados usuario sydadmin estático
    Carregar usuario fixture
    Obter email usuario sysadmin estático
    Obter senha usuario sysadmin estático

POST login (SYSADMIN) e obter token
    [Arguments]    ${email}    ${senha}
    ${body}    Create Dictionary
    ...    mail=${email}
    ...    password=${senha}
    Log    ${body}

    Criar sessão api

    ${response_post_login_sysadmin}    POST On Session
    ...    alias=APIBlackList
    ...    url=/api/login
    ...    json=${body}
    ...    expected_status=200

    Set Local Variable    ${JSON_DATA_POST_LOGIN_SYSADMIN}    ${response_post_login_sysadmin.json()}
    Set Test Variable    ${TOKEN_SYSADMIN}    ${JSON_DATA_POST_LOGIN_SYSADMIN['token']}

Gerar nome completo usuario admin dinâmico
    ${nome_completo}    Gerar Nome Completo
    Set Test Variable    ${NOME_COMPLETO}    ${nome_completo}

Gerar email usuario admin dinâmico
    ${email_admin}    Gerar email usuario
    Set Test Variable    ${EMAIL_ADMIN}    ${email_admin}

Gerar cpf usuario admin dinâmico
    ${cpf}    Gerar Cpf
    Set Test Variable    ${CPF}    ${cpf}

Obter senha e confirme a senha estáticas usuario admin dinâmico
    Set Test Variable     ${SENHA_CONFIRME_A_SENHA}    ${USUARIO_FIXTURE['admin_valido']['senha_confirme_a_senha_validas']}

POST usuario (ADMIN) e obter email
    [Arguments]    ${nome_completo}    ${email}    ${cpf}    ${senha_confirme_a_senha}
    ${body}    Create Dictionary
    ...    fullName=${nome_completo}
    ...    mail=${email}
    ...    accessProfile=ADMIN
    ...    cpf=${cpf}
    ...    password=${senha_confirme_a_senha}
    ...    confirmPassword=${senha_confirme_a_senha}
    Log    ${body}

    Criar sessão api

    ${headers}    Create Dictionary    Authorization=${TOKEN_SYSADMIN}

    ${response_post_user_admin}    POST On Session
    ...    alias=APIBlackList
    ...    url=/api/user
    ...    headers=${headers}
    ...    json=${body}
    ...    expected_status=201

    Set Local Variable    ${JSON_DATA_POST_USER_ADMIN}    ${response_post_user_admin.json()}
    Set Test Variable    ${EMAIL_ADMIN}    ${JSON_DATA_POST_USER_ADMIN['user']['mail']}

Gerar e obter dados usuario admin dinâmico
    Obter dados usuario sydadmin estático
    POST login (SYSADMIN) e obter token    email=${EMAIL_SYSADMIN}    senha=${SENHA}
    Gerar nome completo usuario admin dinâmico
    Gerar email usuario admin dinâmico
    Gerar cpf usuario admin dinâmico
    Carregar usuario fixture
    Obter senha e confirme a senha estáticas usuario admin dinâmico
    POST usuario (ADMIN) e obter email
    ...    nome_completo=${NOME_COMPLETO}
    ...    email=${EMAIL_ADMIN}
    ...    cpf=${CPF}
    ...    senha_confirme_a_senha=${SENHA_CONFIRME_A_SENHA} 

Gerar e obter dados usuario admin dinâmico para modal "NOVO CADASTRO"
    [Arguments]    ${nome_completo}    ${email}    ${cpf}   ${senha_confirme_a_senha}
    Gerar nome completo usuario admin dinâmico
    Gerar email usuario admin dinâmico
    Gerar cpf usuario admin dinâmico
    Carregar usuario fixture
    Obter senha e confirme a senha estáticas usuario admin dinâmico
