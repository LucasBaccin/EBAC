 # language: pt
        Funcionalidade: Checkout da tela de cadastro

        Como cliente da EBAC-SHOP
        Quero concluir meu cadastro
        Para finalizar minha compra

        Contexto:
        Dado que eu acesse a página de cadastro do portal EBAC e finalize a minha compra

        Cenário: Cadastro válido
        Quando eu inserir todos os campos obrigatórios
        E clicar em finalizar a minha compra
        Então deve concluir a compra

        Esquema do Cenário: Campos vazios ou incompletos
        Quando eu deixar de inserir um dos <campo>
        E clicar em finalizar a minha compra
        Então deve aparecer a mensagem "Insira os dados obrigatórios antes de finalizar a compra"

        Exemplos:
            | dados     |
            | nome      |
            | sobrenome |
            | país      |
            | endereço  |
            | cidade    |
            | CEP       |
            | telefone  |
            | email     |

        Cenário: Email válido
        Quando eu inserir um email "@ebac.com.br"
        Então o sistema deve seguir válido

        Esquema do Cenário: Email inválido
        Quando eu inserir o <email>
        Então deve aparecer a mensagem "Email inválido"

        Exemplos:
            | email         |
            | ebac.com.br   |
            | usuario@      |
            | usuario.com   |
            | @hotmail.com  |
            | @gmail.com    |
            | @yahoo.com.br |
