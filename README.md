# 4noobs tracker

Essa aplicação tem como objetivo listar as issues e as pull requests do GitHub de todos os 4noobs cadastrados no [repositório](https://github.com/he4rt/4noobs).

### Instalação

Para fazer a instalação do 4noobs tracker, siga as etapas abaixo:

#### Pré requisitos

- [Git](https://git-scm.com/downloads)
- [Ruby](https://www.ruby-lang.org/en/) versão 3.2.2
- [Bundler](https://bundler.io/)

A maneira de instalar os pacotes acima podem variar de acordo com o seu sistema operacional. Para verificar qual instalação é mais adequada para você, acesse a página oficial dos pacotes requisitados e siga as instruções.

Para um guia mais direto com a instalação, recomendo entrar no [gorails](https://gorails.com/setup)

#### Baixando o Projeto

Com o `git` instalado, clone o repositório

```shell

$ git clone https://github.com/cherryramatisdev/4noobs_tracker.git && cd 4noobs_tracker
```

#### Instalando as dependências

Instale todas as dependências executando o seguinte em seu terminal

```shell
bundle install
```

#### Iniciando a aplicação

Parabéns 🎉, você realizou a instalação do projeto. Agora basta iniciar a aplicação

```shell
rails server
```

#### Fazendo o fetch dos repositórios e issues

Caso a sua página inicial esteja vazia, você pode fazer o fetch de todos os
repositórios e issues com os seguintes comandos

```shell
# Fazendo fetch de todos os repositórios
$ rails fetch:repositories

# Fazendo fetch de todas as issues/pull requests
$ rails fetch:issues
```

## Como contribuir

Contribuições fazem com que a comunidade open source seja um lugar incrível para aprender, inspirar e criar. Todas as contribuições
são **extremamente apreciadas**!

1. Realize um Fork do projeto
2. Crie um branch com a nova feature (`git checkout -b feature/featurebraba`)
3. Realize o Commit (`git commit -m 'feature/featurebraba'`)
4. Realize o Push no Branch (`git push origin feature/featurebraba`)
5. Quando finalizar abra um Pull Request
