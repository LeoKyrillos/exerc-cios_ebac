#language: pt

Funcionalidade: Conclusão de cadastro
Como cliente do EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minhas Compras

Contexto:
Dado que eu acesse a página como clientte do EBAC-SHOP

Cenário: Cadastro realizado com sucesso
Quando eu concluir o cadastro do usuário com todos os campos obrigatórios
Então deve exibir uma mensagem: "Cadastro realizado com sucesso"

Cenário: Cadastro com e-mail inválido
Quando eu concluir o cadastro do usuário com todos os campos obrigatórios
E preencher o campo e-mail com formato inválido
Então deve exibir uma mensagem: "e-mail inválido"

Cenário: Cadastro com campo vazio
Quando eu efetuar o cadastro sem preencher todos os campos obrigatórios
Então deve exibir uma mensagem: "Preencha os campos obrigatórios, marcados com (*)"

Esquema do Cenário: Cadastros válidos
Quando eu concluir o cadastro do <usuário> com todos os campos obrigatórios
Então deve exibir uma <mensagem>: "Cadastro realizado com sucesso"

Exemplos:
| usuário           | mensagem                         |
| "leo@ebac.com.br" | "Cadastro realizado com sucesso" |
| "ze@ebac.com.br"  | "Cadastro realizado com sucesso" |
| "lua@ebac.com.br" | "Cadastro realizado com sucesso" |