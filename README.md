---
# Projeto de Testes Funcionais Automatizados Web | Robot Framework | SeleniumLibrary | RequestsLibrary | Python :test_tube:
---
# :information_source: Introdução
Esse projeto "blacklist-academy12.2-front-robot" é executado no ambiente de automação do ["front"](https://automacao.qacoders.dev.br) e no ambiente da squad "Black List" da ["API REST"](https://black-list.qacoders.dev.br) do "ERP do Qa.Coders Academy" no navegador Chrome e Sistemas Operacionais Windows e Linux Ubuntu, com o objetivo de praticarmos ainda mais testes funcionais automatizados web em Robot Framework, SeleniumLibrary, RequestsLibrary, Python e GitHub Actions.

---
# :dart: Executar os testes automatizados web no navegador chrome em modo headless (2º plano) no ambiente de automação, Gerar e armazenar reports html, xml e screenshots no GitHub Actions
- Nesse repositório, acessar a aba "Actions"
- Na seção "Actions", clicar em "Pipeline Testes Automatizados Web Front ERP Qa.Coders Academy Robot Framework"
- Em "This workflow has a workflow_dispatch event trigger.", clicar em "Run workflow" > "Run workflow" para executar testes automatizados web no navegador chrome em modo headless (2º plano) no ambiente de automação, gerar e armazenar reports html, xml e screenshots no GitHub Actions [com os conteúdos de "secrets.USUARIO_ENV", etc (baseado nos arquivos ["usuario.example.json"](https://github.com/AndressaKarla/blacklist-academy12.2-front-robot/blob/main/resources/fixtures/usuario.example.json), etc, e configurados na aba "Settings" desse repositório > "Secrets and variables" > "Actions" > "Secrets" > "Repository secrets") que foram redirecionados para os arquivos "usuario.json", etc]
- Após o término da execução, clicar na run "Pipeline Testes Automatizados Web Front ERP Qa.Coders Academy Robot Framework"
- Na seção "Artifacts", clicar em "robot-web-reports-html-xml-screenshots-chrome"
- Na janela aberta, escolher um diretório para baixar a pasta compactada "robot-web-reports-html-xml-screenshots-chrome.zip"

# :mag_right: Verificar no navegador padrão o report html gerado e armazenado anteriormente no GitHub Actions e descompactado no computador 
- No Windows 11, abrir uma janela do "Explorador de Arquivos"
- Acessar o diretório onde foi baixada a pasta compactada "robot-web-reports-html-xml-screenshots-chrome.zip" anteriormente
- Descompactar a pasta
- Acessar a pasta descompactada "robot-web-reports-html-xml-screenshots-chrome"
- Clicar 2 vezes sob o report "log.html" gerado e armazenado anteriormente no GitHub Actions e descompactado para ser aberto e verificado no navegador padrão no computador

# :mag_right: Verificar os screenshots gerados e armazenados anteriormente no GitHub Actions e descompactados no computador
- Na pasta descompactada "robot-web-reports-html-xml-screenshots-chrome" acessada anteriormente, acessar "selenium-screenshot-1.png", selenium-screenshot-2.png, etc
```
- selenium-screenshot-1.png
  . . .
- selenium-screenshot-x.png
```    

- Na pasta descompactada "robot-web-reports-html-xml-screenshots-chrome" acessada anteriormente, acessar a pasta "screenshots" 

Ex.:
```
- BairroEmpresa.png
  . . .
- TelefoneEmpresa.png
```  
  
---
# Antes de clonar ou executar esse projeto localmente no computador, é necessário seguir as instruções abaixo :point_down:
## :hammer_and_wrench: Janela do "Explorador de Arquivos" > opção "Visualizar" > "Mostrar" e marcar algumas opções
- No Windows 11, abrir uma janela do "Explorador de Arquivos"
- Clicar na opção "Visualizar" > "Mostrar" 
- Clicar na opção "Itens ocultos"

## :hammer_and_wrench: Baixar e instalar o git e gitbash; configurar o git
- Caso ainda não tenha o git e gitbash baixado e instalado, acessar o link do [git e gitbash](https://git-scm.com/download/win), baixar e instalar
- Caso ainda não tenha configurado o git, seguir os passos apresentados nesse link [Configure a ferramenta](https://training.github.com/downloads/pt_BR/github-git-cheat-sheet/#:~:text=Configure%20a%20ferramenta) e configurar

## :hammer_and_wrench: Excluir chromedriver que já foi baixado em algum outro momento
- Na janela do "Explorador de Arquivos" acessar o diretório "C:\Users\usuario\AppData\Local\Programs\Python ...\Scripts", procurar e excluir "chromedriver.exe"
- Acessar o diretório "C:\Ruby\bin", procurar e excluir "chromedriver.exe"
- Acessar o diretório "C:\Windows", procurar e excluir "chromedriver.exe"
- Acessar o diretório "C:\Windows\System32", procurar e excluir "chromedriver.exe"

## :hammer_and_wrench: Instalar novo chromedriver 
- Verificar versão do navegador Chrome (Ex.: Versão 119.0.6045.124)
```
chrome://settings/help
```
- Acessar o site com a versão "Stable" do [chromedriver](https://googlechromelabs.github.io/chrome-for-testing/#stable) (Ex.: Version: 119.0.6045.105 (r1204232)) próxima a versão do Chrome verificada anteriormente 
- Em "chromedriver" > "win32" copiar a "URL"
  - Ex.: https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/119.0.6045.105/win32/chromedriver-win32.zip
- Acessar a "URL" copiada anteriormente
- Baixar o arquivo "chromedriver-win32.zip"
  - Descompactar o arquivo
  - NÃO executar o executável "chromedriver.exe"
  - Mover o executável "chromedriver.exe" para o diretório "C:\Windows\System32"
		
- Abrir um novo gitbash ou outro terminal de preferência como administrador, informar o comando abaixo para confirmar se o novo chromedriver realmente foi instalado, e verificar se a versão apresentada é a mesma no qual foi baixada no site com a versão "Stable" anteriormente (Ex.: ChromeDriver 119.0.6045.105)
```
chromedriver -v
```

## :hammer_and_wrench: Desinstalar Python que já foi instalado em algum outro momento
- Na ferramenta de pesquisa do Windows, informar "Adicionar ou remover programas" 
- Clicar na sugestão apresentada 
- Em "Aplicativos > Aplicativos instalados", no campo de busca, informar "Python" e/ou "Python Launcher"
- Clicar no resultado apresentado
- Clicar em "... > Desinstalar" e prosseguir com as etapas de desinstalação
- Na janela do "Explorador de Arquivos", acessar o diretório "C:", procurar e excluir a pasta "Python ..."
- Acessar o diretório "C:\Program Files", procurar e excluir a pasta "Python ..."
- Acessar o diretório "C:\Program Files (x86), procurar e excluir a pasta "Python ..."
- Acessar o diretório "C:\Users\usuario\AppData\Local\Programs", procurar e excluir a pasta "Python ..."
- Acessar o diretório "C:\Users\usuario\AppData\Roaming", procurar e excluir a pasta "Python ..."

## :hammer_and_wrench: Desinstalar e/ou Remover robotframework que já foi instalado em algum outro momento
- Na janela do "Explorador de Arquivos", acessar o diretório "C:\Users\usuario", procurar e excluir o arquivo .robotframework-ls

## :hammer_and_wrench: Python versão 3.8.1 (x86)
- Baixar o python-3.8.1 do "[Windows x86 executable installer](https://www.python.org/ftp/python/3.8.1/python-3.8.1.exe)"
- Clicar com botão direito no executável "python-3.8.1.exe > Mostrar mais opções > Executar como administrador"
- Marcar as opções "Use admin privileges when instaling py.exe" e "Add Python 3.8 to PATH" caso ainda não estejam marcadas
- Clicar em "Customize installation"
- Em "Optional Features", marcar todas as opções caso ainda não estejam marcadas
- Em "Advanced Options", marcar a opção "Install for all users"
- Em "Customize install location" alterar para "C:\Python38"
- Prosseguir com as outras etapas de instalação
- Abrir um novo gitbash ou outro terminal de preferência como administrador, informar o comando abaixo para confirmar se o python realmente foi instalado
```
python --version
```
- E verificar se foi retornada a mesma versão do python do "Windows x86 executable installer" instalada anteriormente:
```
Python 3.8.1
```
- Informar o comando abaixo para verificar se foi retornada alguma versão e confirmar se o pip (gerenciador de pacotes do python) realmente foi instalado
```
pip --version
```

---
# :hammer_and_wrench: Clonar o projeto
- No Windows 11, abrir uma janela do "Explorador de Arquivos"
- Acessar o diretório onde será clonado o projeto "blacklist-academy12.2-front-robot"
- Copiar esse diretório 
- No gitbash ou terminal aberto como administrador anteriormente, informar o comando abaixo para acessar onde será clonado o projeto
```
cd "<diretório copiado anteriormente>"
```
Ex.: 
```
cd "C:\PROJETOS\Automação"
```
- Informar o comando abaixo para clonar este repositório via "HTTPS"
```
git clone https://github.com/AndressaKarla/blacklist-academy12.2-front-robot.git
```
- Ou informar o comando abaixo para clonar este repositório via "SSH"
```
git clone git@github.com:AndressaKarla/blacklist-academy12.2-front-robot.git
```

# :hammer_and_wrench: Instalar todas as dependências necessárias
- No gitbash aberto como administrador anteriormente, informar o comando abaixo para acessar o projeto "blacklist-academy12.2-front-robot" clonado anteriormente
```
cd "blacklist-academy12.2-front-robot"
```
Ex.: 
```
C:\PROJETOS\Automação\blacklist-academy12.2-front-robot
```
- Informar o comando abaixo para instalar todas as dependências necessárias do projeto 
```
pip install -r requirements.txt
```

---
# :hammer_and_wrench: Instalar as extensões no Visual Studio Code (VS Code)
- Caso ainda não tenha o VS Code baixado e instalado, acessar o site do [Visual Studio Code](https://code.visualstudio.com/download), baixar e instalar com a opção "System Installer"
- Com o Visual Studio Code aberto, caso seja apresentado alguma mensagem de "Instalar pacote de idiomas ...", clicar no ícone de configurações > "Don't Show Again"
- Clicar na opção "Manage > Profiles > Create Profile"
- Em "Profile name", informar "Robot Framework"
- Clicar na opção "Create"
- Clicar na opção "Extensions", informar e instalar as extensões abaixo:
  - One Dark Pro
    - binaryify
      - Clicar na opção "One Dark Pro Darker" apresentada para habilitar a extensão
  - Material Icon Theme
    - Philipp Kief
      - Clicar na opção "Material Icon Theme" apresentada para habilitar a extensão
  - Python
    - Microsoft
  - Robot Framework Language Server 
    - Robocorp
- Fechar o VS Code

# :bookmark_tabs: Abrir o VS Code diretamente na pasta do projeto "blacklist-academy12.2-front-robot"
- No gitbash aberto como administrador anteriormente, informar o comando abaixo para abrir o VS Code diretamente na pasta do projeto "blacklist-academy12.2-front-robot"
```
code .
```
- Aguardar o VS Code ser aberto
- Fechar esse gitbash
- No VS Code aberto, caso seja apresentado "Do you trust the authors on the files in this folder?", marcar a opção "Trust the authors of all files in the parent folder ...."
	- Clicar no botão "Yes, I trust the authors ...."

# :hammer_and_wrench: Criar arquivos "usuario.json", etc, informando os dados com base nos arquivos "usuario.example.json", etc
- No VS Code aberto anteriormente, acessar "resources > fixtures"
- Criar o arquivo "usuario.json"
  - Informar os dados com base no arquivo ["usuario.example.json"](https://github.com/AndressaKarla/blacklist-academy12.2-front-robot/blob/main/resources/fixtures/usuario.example.json)
  - Salvar o arquivo "usuario.json" com os dados informados anteriormente

---
# :dart: Executar os testes automatizados web no navegador chrome na interface gráfica no ambiente de automação
## :triangular_flag_on_post: Executar cada cenário individualmente do projeto
- Abrir uma janela do "Explorador de Arquivos"
- Acessar o diretório onde foi clonado o projeto “blacklist-academy12.2-front-robot”
- Copiar esse diretório 
- Abrir um novo gitbash
- Informar o comando abaixo para acessar o projeto "blacklist-academy12.2-front-robot"
```
cd "<diretório copiado anteriormente>"
```
Ex.: 
```
cd "C:\PROJETOS\Automação\blacklist-academy12.2-front-robot"
```
- Informar o comando abaixo para executar cada cenário individualmente do projeto:
```
robot -d ./reports -i nome_tag ./tests/*
```
Ex. 1:
```
robot -d ./reports -i cadastro_admin ./tests/*
```
Ex. 2: 
```
robot -d ./reports -i cadastro_empresa ./tests/*
```
Ex. 3: 
```
robot -d ./reports -i empresa_admin ./tests/*
```

# :dart: Executar os testes automatizados web no navegador chrome em modo headless (2º plano) no ambiente de automação, Gerar e armazenar reports html, xml e screenshots no computador
## :triangular_flag_on_post: Executar todos os cenários do projeto, Gerar e armazenar reports html, xml e screenshots na pasta "reports" no computador
- No gitbash aberto anteriormente, informar o comando abaixo para executar todos os cenários do projeto (mesmo comando que é utilizado no "Passo 5" do job "robot-web-chrome" da "Pipeline Testes Automatizados Web Front ERP Qa.Coders Academy Robot Framework" em ".github > workflows > [workflow-blacklist-academy-front-robot-selenium-requests.yml](https://github.com/AndressaKarla/blacklist-academy12.2-front-robot/blob/main/.github/workflows/workflow-blacklist-academy-front-robot-selenium-requests.yml)" no GitHub Actions), Gerar e armazenar html, xml e screenshots na pasta "reports" no computador:
```
robot -d ./reports -v BROWSER:headlesschrome ./tests/*
```

---
# :mag_right: Verificar o report html e os screenshots gerados e armazenados na pasta "reports" anteriormente no computador 
## :bookmark_tabs: Report html no computador
- No VS Code aberto anteriormente, acessar "reports > log.html" 
- Clicar com botão direito do mouse sob o arquivo "log.html" > "Reveal in File Explorer" 
- Na janela do "Explorador de Arquivos" aberta automaticamente, clicar 2 vezes sob o arquivo "log.html" gerado e armazenado anteriormente no computador para ser aberto e verificado no navegador padrão

## :bookmark_tabs: Screenshots no computador
- No VS Code aberto anteriormente, acessar "reports > selenium-screenshot-1.png, selenium-screenshot-2.png, etc"
```
- selenium-screenshot-1.png
  . . .
- selenium-screenshot-x.png
```    

- Acessar "reports > screenshots" 

Ex.:
```
- BairroEmpresa.png
  . . .
- TelefoneEmpresa.png
```  

---
### Feito com ❤️ por Andressa Karla, Cassiano Pereira, Cristian Fabiano, Ewerton Luiz e Isabela Vidal :wave: 

---
