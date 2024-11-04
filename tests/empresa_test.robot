*** Settings ***
Library    Process 
Resource            ../resources/base.resource
Resource            ../resources/keywords/login_keyword.robot
Resource            ../resources/keywords/empresa_keyword.robot

Test Teardown  Encerrar sessão 


*** Test Cases ***
 Listar empresas cadastradas    
     [Tags]    empresa_admin    regressao
     Realizar login (ADMIN)
     Wait Until Page Contains   text=Logout
     Clicar na opção Cadastros
     Wait Until Page Contains   text=Cadastros
     Sleep   5
     Clicar no botão Empresa
     Sleep   5 
