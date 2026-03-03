            # language: pt
            Funcionalidade: configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página da EBAC e selecione o produto desejado

            Cenário: Seleções obrigatórias válidas
            Quando eu selecionar <color> e <size>
            E a <quantidade> for válida
            Então o produto deve ser inserido no carrinho

            Exemplos:
            | color  | size | quantidade |
            | Blue   | XS   | 1          |
            | Orange | S    | 2          |
            | Red    | M    | 3          |
            | Blue   | L    | 4          |
            | Orange | XL   | 5          |
            | Red    | XS   | 6          |
            | Blue   | S    | 7          |
            | Orange | M    | 8          |
            | Red    | L    | 9          |
            | Blue   | XL   | 10         |

            Cenário: Seleções obrigatórias inválidas (cor)
            Quando eu selecionar somente <color>
            Então deve aparecer a mensagem "Selecione o tamanho do produto"

            Cenário: Seleções obrigatórias inválidas (tamanho)
            Quando eu selecionar somente <size>
            Então deve aparecer a mensagem "Selecione o cor do produto"

            Cenário: Seleções obrigatórias inválidas (quantidade)
            Quando eu selecionar <color> e <size>
            E a <quantidade> for inválida
            Então deve aparecer a mensagem "Quantidade de produtos inválida"

            Exemplos:
            | quantidade |
            | 11         |
            | 12         |
            | 13         |
            | 14         |
            | 15         |
            | 16         |
            | 17         |
            | 18         |
            | 19         |
            | 20         |

Cenário: Limpar as seleções
Quando eu clicar no botão "limpar"
Então deve apagar a seleção de <color>, <size> e <quantidade>