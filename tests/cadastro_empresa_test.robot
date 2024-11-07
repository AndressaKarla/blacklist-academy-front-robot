*** Settings ***
Resource            ../resources/base.resource
Resource            ../resources/keywords/login_keyword.robot
Resource            ../resources/keywords/cadastro_empresa_keyword.robot


*** Test Cases ***
Cadastrar Empresa com sucesso
    [Tags]    cadastro_empresa    regressao
    Realizar login (ADMIN)
    Cadastrar Empresa com sucesso
