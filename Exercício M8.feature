            #language: pt

            Funcionalidade: Compra de produtos
            Como cliente do EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho, cor e quantidade
            Para depois inserir no meu carrinho

            Contexto:
            Dado que eu acesse a página como clientte do EBAC-SHOP

            Cenário: Compra válida
            Quando eu escolher meu produto
            E selecionar tamanho
            E selecionar cor
            E selecionar quantidade <=10
            Então deve exibir uma mensagem: "Inserido com sucesso"

            Cenário: Compra sem selecionar tamanho
            Quando eu escolher meu produto
            E não selecionar o tamanho
            Então deve exibir uma mensagem: "Selecioine o tamenho do produto"

            Cenário: Compra sem selecionar cor
            Quando escolher meu produto
            E não selecionar a cor
            Então deve exibir uma mensagem: "Selecione a cor do produto"

            Cenário: Compra sem selecionar a quantidade
            Quando escolher meu produto, selecionar tamanho e cor
            E não selecionar a quantidade
            Então deve exibir uma mensagem: "Selecione a quantidade do peoduuto"

            Cenário: Compra com mais de 10 produtos
            Quando escolher meu produto, selecionar tamanho e cor
            E escolher quantidade >10 produtos
            Então deve exibir uma mensagem: "Limite máximo de 10 produtos"

            Cenário: Limpando o carrinho
            Quando eu clicar no botão limpar
            Então todos os produtos existentes no carrinho devem ser excluidos e exibir uma mensagem: "Produtos excluidos com sucesso"

            Esquema do Cenário: Compras válidas
            Quando eu selecionar o <produto>
            E selecionar o <tamanho>
            E selecionar a <cor>
            E selecionar a <quantidade>
            Então deve exibir a <mensagem> de inclusão bem sucedida

            Exemplos:
            | produto                   | tamanho | cor       | quantidade | mensage                |
            | "Augusta Pullover Jacket" | "S"     | "Azul"    | "2"        | “Inserido com sucesso” |
            | "Augusta Pullover Jacket" | "M"     | "Roza"    | "6"        | “Inserido com sucesso” |
            | "Augusta Pullover Jacket" | "L"     | "Preto"   | "3"        | “Inserido com sucesso” |
            | "Augusta Pullover Jacket" | "XS"    | "Branco"  | "1"        | “Inserido com sucesso” |
            | "Augusta Pullover Jacket" | "XL"    | "Amarelo" | "4"        | “Inserido com sucesso” |



            Funcionalidade: Login na plataforma EBAC-SHOP
            Como cliente do EBAC-SHOP
            Quero fazer meu login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página como clientte do EBAC-SHOP

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
