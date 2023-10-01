# Como criar um token GitHub

Para que possamos executar o comando `fetch:issues` que pega todas as issues do github, precisamos ter uma chave de acesso na API deles. Essa chave pode ser configurada de maneira muito simples seguindo o passo a passo abaixo:

1. Primeiro entre nas configurações da sua conta:

<img width="1469" alt="image" src="https://github.com/cherryramatisdev/4noobs_tracker/assets/86631177/4c660e64-50d8-4611-883d-881f3cde5463">

2. Depois entre nas sessão de desenvolvedor (scrollando ate o final da pagina):

<img width="1470" alt="image-1" src="https://github.com/cherryramatisdev/4noobs_tracker/assets/86631177/15b7da0c-a710-4199-874d-0e01678ce226">

3. Selecione a aba de "Personal access token" e então "Fine-grained tokens" para poder visualizar seus tokens

<img width="1466" alt="image-2" src="https://github.com/cherryramatisdev/4noobs_tracker/assets/86631177/9df4a776-2c07-494c-94a1-1f4997c58533">

4. Clique no botão "Generate New Token", digite um nome para seu token e faça scroll diretamente para o final da pagina

https://github.com/cherryramatisdev/4noobs_tracker/assets/86631177/f93a96c2-73f0-425f-9e17-8a847c06c089


5. Agora que você conseguiu copiar o token, crie um arquivo `.env` na pasta do projeto com o seguinte conteudo:

```
GH_API_KEY=seutokenaqui
```

Parabéns! Agora você deve conseguir executar o comandos descritos no [README](/README.md) facilmente.

Caso reste alguma duvida, por favor me chame!
