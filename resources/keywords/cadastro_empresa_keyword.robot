*** Settings ***
Library                FakerLibrary    locale=pt_BR
Library                random

Resource               ../../resources/base.resource


*** Variables ***
${servicos}    Consultoria 
${Pais}    Brasil
${Bairro}    Vargas
${Complemento}    Predio A
${EstadoEmpresa}  RS


*** Keywords ***
Cadastrar Empresa com sucesso
    Click Element    id=Cadastros
    Click Element    id=Empresa
    Capture Page Screenshot    screenshots/Empresa.png 

    Sleep    ${TIMEOUT}
    Wait Until Element Is Visible    css=button.css-fvzsut
    Click Element    css=button.css-fvzsut
    Capture Page Screenshot    screenshots/CadastroEmpresa.png 
   
    ${novaCompany}    FakerLibrary.Company
    ${TipoSociedade}    FakerLibrary.Company Suffix  
   
    Input Text    id=companyName         ${novaCompany} ${TipoSociedade}
    Capture Page Screenshot    screenshots/NomeCompany.png 
    
    ${NomeFantasia}    FakerLibrary.Company
    ${fantasia}    FakerLibrary.Century   
    ${TipoEmpresa}    FakerLibrary.Bank Country
    Input Text    id=fantasyName         ${NomeFantasia} ${fantasia}
    Capture Page Screenshot    screenshots/Nomefantasia.png 

    ${EmailEmpresa}    FakerLibrary.Free Email    
    Input Text    id=companyMail          ${EmailEmpresa}
    Capture Page Screenshot    screenshots/EmailEmpresa.png 

    ${cnpj}    Gerar Cnpj
    Input Text    id=matriz      ${cnpj}
    Capture Page Screenshot    screenshots/CnpjEmpresa.png

    # campo telefone tem 13 digitos
    ${telefone}  FakerLibrary.Phone Number 
    ${phone}    Random Number     14    
    Input Text    id=telephone           ${phone}
    Capture Page Screenshot    screenshots/TelefoneEmpresa.png

    Input Text    id=serviceDescription  ${servicos}
    Capture Page Screenshot    screenshots/Descricao.png

    ${ResponsavelEmpresa}    FakerLibrary.Name
    Input Text    id=fullName            ${ResponsavelEmpresa}
    Capture Page Screenshot    screenshots/ResponsavelEmpresa.png
    Capture Page Screenshot    screenshots/Formulario.png
    ${formulario2}     Capture Page Screenshot    screenshots/Formulario.png

    ${cep}    FakerLibrary.Postcode
    Input Text    id=zipCode             ${cep}
    Capture Page Screenshot    screenshots/CepEmpresa.png

    
    Input Text    id=country            ${Pais}
    Capture Page Screenshot    screenshots/PaisEmpresa.png

    ${CidadeEmpresa}    FakerLibrary.City
    Input Text    id=city               ${CidadeEmpresa}
     Capture Page Screenshot    screenshots/CidadeEmpresa.png

      
    Input Text    id=state               ${EstadoEmpresa}
    Capture Page Screenshot    screenshots/EstadoEmpresa.png
    
    Input Text    id=district            ${Bairro}
    Capture Page Screenshot    screenshots/BairroEmpresa.png

    ${RuaEmpresa}    FakerLibrary.Street Name
    Input Text    id=street               ${RuaEmpresa}
    Capture Page Screenshot    screenshots/RuaEmpresa.png

    ${NumeroEmpresa}    FakerLibrary.Numerify
    Input Text    id=number              ${numeroEmpresa}
    Capture Page Screenshot    screenshots/NumeroEmpresa.png
    
    Wait Until Element Is Visible    id=complement
    Input Text    id=complement          ${Complemento}
    Capture Page Screenshot    screenshots/ComplementoEmpresa.png
    Capture Page Screenshot    screenshots/Formulario1.png
    ${formulario1}     Capture Page Screenshot    screenshots/Formulario1.png
    Click Element    id=save