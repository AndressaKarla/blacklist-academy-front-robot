*** Settings ***
Documentation    Arquivo com os casos de testes da funcionalidade de empresa

Resource    ../resources/keywords/login_keyword.robot
Resource    ../resources/keywords/empresa_keyword.robot

Test Teardown       Encerrar sessão

*** Test Cases ***
Clicar no menu "Cadastros > Empresa" - Validar apresentar a tela "Empresa"
    [Tags]    cadastro_empresa
    Realizar login (ADMIN)
    Clicar no menu "Cadastros > Empresa"
    Apresentar a tela "Empresa"