#language: pt

Funcionalidade: Login na plataforma EBAC-SHOP
Como cliente do EBAC-SHOP
Quero fazer meu login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página como cliente do EBAC-SHOP

Cenário: Autenticação válida
Quando eu digitar o usuário "leo@ebac.com.br"
E a senha "12345"
Então deve exibir uma mensagem: "Olá Léo"

Cenário: Usuário inexistente
Quando eu digitar o usuário "fulano@ebac.com.br"
E a senha "12345"
Então deve exibir uma mensagem: "Usuário não cadastrado"

Cenário: Usuário com senha inválida
Quando eu digitar o usuário "leo@ebac.com.br"
E a senha "00001"
Então deve exibir uma mensagem: "Usuário ou senha invalidos"

Esquema do Cenário: Autenticar muliplos usuários
Quando eu digitar o <usuario>
E a <senha>
Então deve exibir a <mensagem> de sucesso

Exemplos:
| usuário            | senha   | mensagem   |
| "leo@ebac.com.br"  | "12345" | "Olá Léo"  |
| "ze@ebac.com.br"   | "12345" | "Olá Zé"   |
| "gal@ebac.com.br"  | "12345" | "Olá Gal"  |
| "caio@ebac.com.br" | "12345" | "Olá Caio" |
| "lua@ebac.com.br"  | "12345" | "Olá Lua"  |