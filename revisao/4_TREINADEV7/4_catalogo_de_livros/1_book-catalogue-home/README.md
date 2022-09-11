# Catálogo de livros
--------------------
## Vamos criar uma página inicial para a nossa aplicação, com testes!

Nesta série de desafios, vamos criar uma aplicação Web em que podemos catalogar nossa
coleção de livros. Criaremos um formulário de cadastro, uma página que mostra todos 
os livros registrados e uma página onde poderemos ver informações adicionais.

Rode os testes usando o comando `rspec` e implemente as modificações no seu código
para que os testes passem. Sugerimos que você resolva um teste de cada vez,
começando pelo primeiro.

Vamos começar pela Home, a página inicial onde vemos o nome da aplicação e uma
mensagem de boas vindas. Dessa maneira, um visitante sabe onde está assim que
entra na página inicial. Além disso, nessa mesma página, vamos listar todos os
livros que já foram cadastrados nessa plataforma.

Você vai definir a rota `root_path` da aplicação e a *view* Home, que deverá
mostrar inicialmente o título "Catálogo de livros" e a mensagem "Boas vindas!".
Além disso, será necessário criar o `controller` e a `action` referente a esta
*view*. Se estiver em dúvida, pode usar os nomes sugeridos `home` e `index`.
Com isso, o primeiro teste deve passar. :)

Nessa mesma *view*, vamos mostrar uma lista com todos os livros já cadastrados na
plataforma. Para isso, será necessário criar um *model* `Book`. Se reparar na
mensagem do segundo erro deste desafio, verá que ela indica ausência de uma
`constant Book`. Lembre-se que, em Ruby, todas as classes começam com letra
maiúscula, então entenda esse erro como "uma classe está faltando". No Rails,
vamos criar principalmente dois tipos de classes: *Models* e *Controllers*.
Nesse caso, vamos criar um *model* com o comando `rails generate` com o nome
informado para a classe e seus atributos:

- Título: `title:string`
- Autora: `author:string`
- Ano de publicação: `publication_year:integer`

Você pode escolher a forma que quer mostrar os dados dos livros na página. Mas
sugerimos que o código na *view* inclua um *loop* que itere por todos os livros
cadastrados e renderize na tela os elementos HTML necessários para cada item.

Você deve sempre consultar a documentação oficial do Rails (também conhecida
como *Rails Guides*), além das nossas apostilas com todo o conteúdo preparatório
para os treinamentos.

**Evite utilizar os comandos como `generate controller` e `scaffold`.
Prefira criar arquivos e implementar seu código manualmente.
Use comandos geradores apenas quando recomendado na descrição do desafio.**

- [Getting Started](https://guides.rubyonrails.org/getting_started.html)
- [Rails Routing from the Outside In](https://guides.rubyonrails.org/routing.html)
- [Active Record Migrations: model generators](https://guides.rubyonrails.org/active_record_migrations.html#model-generators)

Se preferir usar a documentação em português:
- [Começando com Rails](https://guiarails.com.br/getting_started.html)
- [Rotas do Rails de Fora pra Dentro](https://guiarails.com.br/routing.html)
- [Active Record Migrations: model generators](https://guiarails.com.br/active_record_migrations.html#model-generators)
