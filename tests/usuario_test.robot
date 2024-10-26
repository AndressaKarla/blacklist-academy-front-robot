*** Settings ***
Documentation    Arquivo com os casos de testes da funcionalidade de usuário

Resource            ../resources/base.resource
Resource            ../resources/keywords/login_keyword.robot
Resource            ../resources/keywords/usuario_keyword.robot

Test Teardown       Encerrar sessão


*** Test Cases ***
Editar Cadastro Usuário (ADMIN) - Validar apresentar o modal "Editar Cadastro"
    [Tags]    editar_admin    regressao
    Realizar login (ADMIN)
    Clicar no menu "Cadastros > Usuários"
    Clicar no botão "Editar"
    Apresentar o modal "Editar Cadastro"