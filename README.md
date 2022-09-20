# Projeto Rails 7 - UNIPAR - Desenvolvimento de Aplicações para Web e Mobile

Clonar esse repositório utilzando:

`git clone https://github.com/manfe/pos-unipar-rails-app.git rails7_app`

Entrar na pasta do projeto `cd rails7_app`

## Nesse ponto é necessário estar com o Ruby 3.0 

Instalar o ruby utilizando um gerenciador de versão do ruby - (RVM)[https://rvm.io/] ou (RBENV)[https://github.com/rbenv/rbenv]

Ao utilizar RVM:

`rvm install 3.0`
`rvm use 3.0`

Verificar a instalação com `ruby -v` deve mostrar a versão `3.0`

## Initialização do projeto

Rodar as migrações utilizando `rails db:migrate`

Initializar o servidor `rails server`

## Comandos utilizados durante as aulas

`rails generate model Article title:string body:text` para gerar um model e migração

`rails generate migration <nome_da_migracao>` para gerar uma migração (sem model)

`rails generate controller <nome_do_controller>` para gerar um controller

`rails console` para entrar no console interativo
