            #language: pt

            Funcionalidade: Compra de produtos
            Como cliente EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho, cor e quantidade<=10
            Para depois inserir no meu carrinho

            Contexto:
            Dado que eu acesse a página como cliente do EBAC-SHOP

            Cenário: Compra válida
            Quando eu escolher meu produto
            E selecionar todos os campos obrigatórios, tamanho, cor e quantidade <=10
            Então deve exibir uma mensagem: "Produtos inseridos com sucesso"

            Cenário: Compra sem selecionar campos obrigatórios
            Quando eu escolher meu produto
            E não selecionar um dos campos obrigatórios, tamanho, cor e quantidade <=10
            Então deve exibir uma mensagem: "Selecione cor, tamanho e quantidade <=10"

            Cenário: Limpando o carrinho
            Quando eu clicar no botão limpar
            Então todos os produtos existentes no carrinho devem ser excluidos e exibir uma mensagem: "Produtos excluidos com sucesso"

            Esquema do Cenário:
            Quando eu escolher meu <produto>
            E selecionar os campos obrigatórios, <tamanho>, <cor> e <quantidade>
            Então deve exibir uma <mensagem> de inclusão bem sucedida

            Exemplos:
            | produto                   | tamanho | cor       | quantidade | mensagem                       |
            | "Augusta Pullover Jacket" | "S"     | "Azul"    | "2"        | "Produto inserido com sucesso" |
            | "Augusta Pullover Jacket" | "M"     | "Rosa"    | "6"        | "Produto inserido com sucesso" |
            | "Augusta Pullover Jacket" | "L"     | "Preto"   | "3"        | "Produto inserido com sucesso" |
            | "Augusta Pullover Jacket" | "XS"    | "Branco"  | "1"        | "Produto inserido com sucesso" |
            | "Augusta Pullover Jacket" | "XL"    | "Amarelo" | "4"        | "Produto inserido com sucesso" |