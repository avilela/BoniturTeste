# README

Projeto para o teste da empresa Bonitur, onde tenho objetivo de controlar cadastro de empresas e suas respectivas atrações 

* Versão do Ruby e Rails 
Ruby - 2.4.0
Rails - 5.2.0

* Dependencias do sistema
No projeto estamos usando "Paperclip" para o upload de arquivos como dependência e ele necessita do imagemagick para isso, caso esteja usando linux utilize os comandos a baixo para instalar:
 ```bash
$ sudo apt-get install imagemagick libmagickcore-dev libmagickwand-dev libmagic-dev
$ sudo apt-get install imagemagick
```
ou no MacOS
```bash
$ brew install imagemagick
```

* Configurações
Para instalar as dependências do projeto utilize a gem bundler, ela se encarregará de instalar as gems necessárias
 ```bash
$ gem install bundler
 ```
Após comando de instalação rode:
```bash
$ bundle install
```
* Criação do banco de dados e geração das tabelas


