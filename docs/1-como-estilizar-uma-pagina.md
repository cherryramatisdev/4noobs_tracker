# Como estilizar uma pagina

Para iniciantes no framework ruby on rails a arquitetura inicial pode ser um pouco intimidadora, afim de facilitar a contribuição de pessoas não especializadas no framework vou descrever de forma simples onde podemos achar o HTML de uma pagina e como estilizamos com CSS.

## Onde esta meu arquivo HTML?

Para nos localizarmos no projeto, vou lhe apresentar os três locais que vão ser uteis para uma contribuição front-end:

1. `app/assets/stylesheets`: Aqui vamos ter todos os nossos arquivos CSS, como todos os estilos são interpretados globalmente é importante aplicar alguma técnica de namespace no nome das classes.
2. `app/views/`: Aqui temos todos os arquivos HTML, esses arquivos normalmente estão dentro de uma pasta inicial de contexto como `issue` e dentro dela vão estar os arquivos com extensão `.html.erb`
3. `config/routes.rb`: Aqui temos listados todas as nossas  rotas(já vamos aprender como ler essas rotas)

## Interpretando o arquivo de rotas

O arquivo de rotas pode se tornar muito complexo, mas para estilizarmos podemos nos ater a pequenos conceitos:

Para cada método teremos uma string seguindo o padrão "nome_do_controller#nome_do_arquivo_html", por exemplo podemos olhar o nosso arquivo router:

```ruby
# frozen_string_literal: true

Rails.application.routes.draw do
  root 'repository#index'
end
```

Como pode ver, o método `root` representa o controller `repository` (encontrado em `app/controllers/repository_controller.rb`) junto com a view `index`

Nesse caso estamos falando do arquivo `app/views/repository/index.html.erb`, simples certo? O framework inteiro segue uma logica muito bem estruturada então podemos confiar que esse padrão vai se manter consistentemente.

A medida que tivermos mais rotas, vamos utilizar o método `get` ao invés do método `root` visto que o root referencia a rota inicial apenas.

Mas a logica sera a mesma, abaixo deixo um exemplo de uma rota fictícia:

```ruby
# frozen_string_literal: true

Rails.application.routes.draw do
  root 'repository#index'

  get 'issue#new'
end
```

Nesse exemplo sabemos que o arquivo sera localizado em `app/views/issue/new.html.erb`.

Para saber um pouco mais sobre como o ERB funciona, referencie a [próxima pagina](/docs/2-como-utilizar-erb.md)
