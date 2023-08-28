# O que é ERB?

ERB é uma sigla para "Embedded Ruby" e serve para incluirmos código ruby em N tipos de arquivo a fins de template (podemos por exemplo gerar arquivos de configuração dinamicamente usando ERB). No caso do ruby on rails é usado para manipular arquivos HTML que são usados nas nossas views dando mais poder para quem esta desenvolvendo (podendo utilizar condicionais, estruturas de repetição, classes utilitárias da aplicação, etc....)

Considere o exemplo abaixo:

```erb
<ul>
    <% @tarefas.each do |tarefa| %>
        <li>
            <%= tarefa %>
        </li>

        <% if tarefa == "Tarefa 3" %>
            <li>Tarefa 3 lidada especificamente</li>
        <% end %>
    <% end %>
</ul>
```

## Diferença entre tag de exibição e tag de controle

Utilizando ERB temos duas formas de utilizar a linguagem ruby dentro do html:

- Exibindo algum conteúdo para o usuário final (tela do navegador):

Nesse caso estamos falando de qualquer coisa que aparece na tela como uma variável, para isso usamos o padrão `<%= %>`. Perceba que o `=` diferencia essa tag em específico, podemos por exemplo exibir o valor de uma variável para a tela(sendo o uso mais comum): `<%= variavel %>`

- Não exibindo algum conteúdo para o usuário final

Já nesse caso estamos falando de estruturas que **não** aparecem para o usuário final, logo usamos essa tag para declarar condicionais, estruturas de repetição, etc...Por exemplo podemos usar um if com: `<% if 1 > 0 %>`, esses condicionais vão ser acompanhados de uma tag especial `<% end %>` que indica o escopo onde podemos incluir conteúdo, por exemplo:

```erb
<% if 1 > 0 %>
    <h1>O valor de 1 é maior que 0</h1>
<% end %>
```

## Estruturas de repetição

As estruturas de repetição servem para que possamos lidar com listas dentro dos nossos templates, como por exemplo uma lista de tarefas ou de usuários para alguma página em específico.

- Each

De longe o mais usado para templates é o each, nele podemos percorrer uma lista diretamente e lidar com cada valor dentro da lista separadamente como podemos ver abaixo:

```erb
<ul>
  <% [1, 2, 3, 4].each do |numero| %>
    <li><%= numero %> Dentro da lista :D</li>
  <% end %>
</ul>
````

## Condicionais

Como ja falamos no "Diferença entre tag de exibição e tag de controle", podemos utilizar as tags de controle para criar condicionais em nossos templates, essas condicionais podem ter os seguintes tipos (que seguem a linguagem ruby visto que ERB é apenas um Embedded Ruby).

- If

Ja vimos algumas vezes o if e com ele podemos construir condicionais unicos ou multiplos considerando primeiro o caminho `true` e depois o caminho `false`, como mostrado abaixo:

```erb
<% if "todo".empty? %>
  <h1>todo não foi encontrado</h1>
<% else %>
  <h1>todo foi encontrado</h1>
<% end %>
```

> Isso vai produzir um h1 escrito "todo foi encontrado" na tela.

- Unless

O unless se comporta da mesma forma que o if, mas com ele podemos assumir o caminho `false` primeiro e depois o caminho `true`, como mostrado abaixo:

```erb
<% unless "todo".empty? %>
  <h1>todo não foi encontrado</h1>
<% else %>
  <h1>todo foi encontrado</h1>
<% end %>
```

> Isso vai produzir um h1 escrito "todo não foi encontrado" na tela.

- Case

No caso desse condicional conhecido como switch em outras linguagens como JavaScript, podemos analisar uma única variável por múltiplos ângulos como mostrado abaixo:

```erb
<% case 1 %>
<% when 0 %>
  <h1>É zero</h1>
<% when 1 %>
  <h1>É um</h1>
<% else %>
  <h1>É qualquer outro número</h1>
<% end %>
```

> Isso vai produzir um h1 escrito "É um" na tela.
