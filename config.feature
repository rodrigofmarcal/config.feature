            #language: pt

            Funcionalidade: tela de configurar produtos
            Como cliente da Ebac-Shop
            Quero configurar os produtos de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho de compras

            Contexto: Dado que eu acesse a pagina de produtos da loja Ebac-Shop

            Cenário: Adicionado ao carrinho
            Quando eu "selecionar o tamanho, cor e quantidade de no máximo 10 produtos"
            E clicar no botão "carrinho"
            Então deve exibir a mensagem "adicionado ao carrinho com sucesso"

            Cenário: Não adicionado ao carrinho
            Quando eu "selecionar o tamanho, cor e quantidade acima de 10 produtos"
            E clicar no botão "carrinho"
            Então deve exibir a mensagem de alerta "Não adicionado, quantidade máxima por vez extrapolada"

            Cenário: Página voltada ao estado original
            Quando eu "selecionar o tamanho, cor e quantidade de produtos aceita pelo sistema"
            E clicar no botão "Limpar"
            Então deve "voltar a página inicial dos produtos"

            Esquema do Cenário: Configurar múltiplos do cenárioc não adicionado ao carrinho
            Quando eu não selecionar o tamanho, cor e quantidade dos <produtos>
            E clicar no botão <carrinho>
            Então deve exibir a <mensagem> de não adicionado ao carrinho

            Exemplos:
            | produtos                            | carrinho                   | mensagem                                                |
            | "produto sem seleção de cor"        | "clicar no botão carrinho" | "não adicionado ao carrinho"                            |
            | "produto sem seleção de tamanho"    | "clicar no botão carrinho" | "não adicionado ao carrinho"                            |
            | "produto sem selecionar quantidade" | "clicar no botão carrinho" | "Não adicionado, quantidade máxima por vez extrapolada" |


