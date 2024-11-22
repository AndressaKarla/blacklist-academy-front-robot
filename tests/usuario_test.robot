*** Settings ***
Documentation    Arquivo com os casos de testes da funcionalidade de usuário

Resource            ../resources/base.resource
Resource            ../resources/keywords/login_keyword.robot
Resource            ../resources/keywords/usuario_keyword.robot

Test Teardown       Encerrar sessão


*** Test Cases ***
Novo Cadastro Usuário (ADMIN) - Campos corretos - Validar apresentar a tela "Usuários"
    [Tags]    cadastro_admin    regressao
    Realizar login (ADMIN)
    Clicar no menu "Cadastros > Usuários"
    Clicar no botão "Novo Cadastro"
    Gerar e obter dados usuario admin dinâmico para modal "NOVO CADASTRO"    nome_completo=${NOME_COMPLETO}    email=${EMAIL_ADMIN}    cpf=${CPF}    senha_confirme_a_senha=${SENHA_CONFIRME_A_SENHA}
    Informar os campos necessários    nome_completo=${NOME_COMPLETO}    email=${EMAIL_ADMIN}    cpf=${CPF}    senha_confirme_a_senha=${SENHA_CONFIRME_A_SENHA}
    Clicar no botão "SALVAR NOVO"
    Apresentar a tela "Usuários"
    
Editar Cadastro Usuário (ADMIN) - Validar apresentar o modal "Editar Cadastro"
    [Tags]    editar_admin    regressao
    Realizar login (ADMIN)
    Clicar no menu "Cadastros > Usuários"
    Clicar no botão "Editar"
    Apresentar o modal "Editar Cadastro"

Filtro de pesquisa de lista de usuários
    [Tags]    pesquisa_usuario    regressao
    Realizar login (ADMIN)
    Clicar no menu "Cadastros > Usuários"
    Colocar filtro de pesquisa com 3 caracteres
    Verificar se os 3 primeiros usuários começam com bla

Datagrid botão de paginação avançar
    [Tags]    paginacao_avancar_usuario    
    Realizar login (ADMIN)
    Clicar no menu "Cadastros > Usuários"
    Apertar o botão de paginação avançar

Datagrid botão de paginação voltar
    [Tags]    paginacao_avancar_voltar_usuario    
    Realizar login (ADMIN)
    Clicar no menu "Cadastros > Usuários"
    Apertar o botão de paginação avançar
    Apertar o botão de paginação voltar    