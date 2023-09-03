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

```sh

git clone https://github.com/cherryramatisdev/4noobs_tracker.git && cd 4noobs_tracker
```

#### Instalando as dependências

Instale todas as dependências executando o seguinte em seu terminal

```sh
bundle install
```

#### Iniciando a aplicação

Parabéns 🎉, você realizou a instalação do projeto. Agora basta iniciar a aplicação

```sh
bundle exec rails server
```

#### Fazendo o fetch dos repositórios e issues

Caso a sua página inicial esteja vazia, você tem duas opções para conseguir desenvolver tranquilamente:

1. Usar mock: Super útil caso você tenha interesse apenas em testar o framework e não quer lidar com configuração de tokens e etc (*Recomendado para iniciantes*).
2. Usar os comandos `fetch`: Caso você tenha interesse em modificar a logica principal da aplicação, necessita lidar com geração de tokens. (**Caso

##### Usar mock

Para usar o mock é super simples, apenas execute o comando:

```sh
rails db:seed
```

##### Usar os comandos fetch

Para conseguir executar esse comandos é necessária a configuração de uma variável de ambiente no projeto com o token do GitHub para que seja possível acessar a API deles. Por favor referencie a [documentação](/docs/3-como-criar-um-token-github.md)

```sh
# Fazendo fetch de todos os repositórios
$ bundle exec rails fetch:repositories

# Fazendo fetch de todas as issues/pull requests
$ bundle exec rails fetch:issues
```

## Como contribuir

Contribuições fazem com que a comunidade open source seja um lugar incrível para aprender, inspirar e criar. Todas as contribuições
são **extremamente apreciadas**!

> Caso seja iniciante no framework Ruby on Rails, dê uma olhada na [pasta docs](/docs/)

1. Realize um Fork do projeto
2. Crie um branch com a nova feature (`git checkout -b feature/featurebraba`)
3. Realize o Commit (`git commit -m 'feature/featurebraba'`)
4. Realize o Push no Branch (`git push origin feature/featurebraba`)
5. Quando finalizar abra um Pull Request

## Pessoas que melhoraram este projeto

<!-- readme: contributors -start -->
<table>
<tr>
    <td align="center">
        <a href="https://github.com/cherryramatisdev">
            <img src="https://avatars.githubusercontent.com/u/86631177?v=4" width="100;" alt="cherryramatisdev"/>
            <br />
            <sub><b>Cherry Ramatis</b></sub>
        </a>
    </td>
    <td align="center">
        <a href="https://github.com/Nandosts">
            <img src="https://avatars.githubusercontent.com/u/65089035?v=4" width="100;" alt="Nandosts"/>
            <br />
            <sub><b>Fernando Melo</b></sub>
        </a>
    </td></tr>
</table>
<!-- readme: contributors -end -->
