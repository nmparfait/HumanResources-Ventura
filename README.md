# HumanResources-Ventura
Ventura-HR

#  Instituto Infnet 

## Escola Superior de Tecnologia de Informação

###  GRADUAÇÃO EM ANÁLISE E DESENVOLVIMENTO DE SISTEMAS**

## Introdução
Este documento apresenta o projeto Ventura HR, projeto desenvolvimento no módulo de Java. 
Há 6 mêses que este trabalho foi desenvolvido com o objetivo de criar  microserviços da empresa Ventura Hr, uma empresa de **recoursos humanos.** para **publicar vagas de empregos**.
Há perfil de **usuários **para ver vagas publicadas pelas empresas. 

Este documento destina-se aos clientes, engenheiros e gerentes envolvidos no desenvolvimento do sistema, doravante referido apenas como CulteBook. O propósito deste documento é apresentar a descrição dos serviços e funções que o sistema a ser desenvolvido deve prover, bem como as suas restrições de operação e propriedades gerais, a fim de ilustrar uma descrição detalhada do sistema para um auxílio durante as etapas de análise, projeto e testes. O documento especifica todos os requisitos funcionais e não funcionais do sistema e foi preparado levando-se em conta as funcionalidades levantadas durante a fase de concepção do sistema.

___________________________________________________________________
# CRIAÇÃO DO PROJETO
Ao longo do semestre foi desenhado o projeto, começando com a criação dos requisitos, definindo os requisitos de cada participantes do projeto, como por exemplo, usuário, empresa, e vagas. 

## Cenário Atual

-Descrição das classes envolvidas 
-Descrição sobre os objetos 
-Descrever as interfaces das classes 
-Criação relação hierárquica 
-Descrever a visão de cada diagrama 
-Descrição do modelo de caso : Temos 4 casos de uso.
## Casos de usos 
![alt](https://github.com/nmparfait/HumanResources-Ventura/blob/master/ventura-img/Candidato.JPG?raw=true)
#### diagrama de uso 

![alt](![alt](https://github.com/nmparfait/HumanResources-Ventura/blob/master/ventura-img/diagrama%20de%20uso.JPG?raw=true))

#### Tempo 
![alt](https://github.com/nmparfait/HumanResources-Ventura/blob/master/ventura-img/Tempo.JPG?raw=true)

#### Administrador 
![alt](https://github.com/nmparfait/HumanResources-Ventura/blob/master/ventura-img/administrator.JPG?raw=true)

#### Diagrama de Classes 
![alt](https://github.com/nmparfait/HumanResources-Ventura/blob/master/ventura-img/DiagramDeClass.JPG?raw=true)

####  Empresa 
![alt](https://github.com/nmparfait/HumanResources-Ventura/blob/master/ventura-img/Empresa.JPG?raw=true)

## Soluções desejadas 
### Descrição das Classes Envolvidas.
#### Usuário: representa as contas de login dos usuáriosdo sistema. É a classe-base para ter acesso ao sistema.

#### Administrator: representa a conta responsável para emitir relatórios, bloquear usuários, desbloquear usuários, consultar usuários. Somente a conta administrador pode adicionar empresa e também realizar mudanças no sistema.

#### Vaga: representa a publicação de uma Vaga de Emprego. Podemos atualizar vagas, indicar vagas, pesquisar vagas, vaga vencida e atualizar vagas. A empresa é responsável por publicar vagas no sistema e atualizar listas de vagas.

#### EmpresaCliente: representa a empresa que publica vagas, a empresa é responsável de se inscrever no site, atualizar seus dados e cadastrar novas vagas.

#### Candidato: O candidato é o usuário que se conecta no sistema para procurar vaga, se candidatar às vagas.

#### Resposta: representa a resposta a respeito da vaga. O usuário se candidatar à vaga, responde às vagas. O usuário também pode ter lista de todas as vagas que ele se submeteu.

#### RespostaCriterio: representa os critérios de cada resposta. As respostas às vagas, podem ser aprovadas e rejeitadas.

#### Critério: representa as exigências de cada vaga.

#### Comportamentos Polimórficos Logar como Usuário e acessar a caixa de entrada correta. Pesquisa de vagas oferece ações conforme o usuário. Só o candidato pode responder à vaga. O candidato pode pesquisar vagas e ver todas as vagas que ele se candidatou.
# Algumas Páginas rodando
![Alt](https://github.com/nmparfait/HumanResources-Ventura/blob/master/ventura-img/About.JPG?raw=true)

![Alt](https://github.com/nmparfait/HumanResources-Ventura/blob/master/ventura-img/login-page.JPG?raw=true)

#### contato
![alt](https://github.com/nmparfait/HumanResources-Ventura/blob/master/ventura-img/contact.JPG?raw=true)

#### Serviços 

![alt](https://github.com/nmparfait/HumanResources-Ventura/blob/master/ventura-img/service.JPG?raw=true)

![alt](https://github.com/nmparfait/HumanResources-Ventura/blob/master/ventura-img/share%20vaga.JPG?raw=true)

#### Sign up 

![alt](https://github.com/nmparfait/HumanResources-Ventura/blob/master/ventura-img/sign%20up.JPG?raw=true)

#### user page 
![alt](https://github.com/nmparfait/HumanResources-Ventura/blob/master/ventura-img/userpage.JPG?raw=true)
