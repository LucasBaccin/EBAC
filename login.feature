# language: pt
Funcionalidade: login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

  Contexto:
    Dado que eu acesse a página de autenticação do portal EBAC

  Cenário: Autenticação de usuáio válida
    Quando eu digitar o usuário "jose@ebac.com.br"
    E a senha "1234"
    Então devo ser direcionado para a tela de checkout

  Cenário: Autenticação de senha inválida
    Quando eu digitar o usuário "jose@ebac.com.br"
    E a senha "abcd"
    Então deve aparecer a mensagem "Usuário ou senha inválidos"

  Cenário: Autenticação de usuário inválida
    Quando eu digitar o usuário "roberto@ebac.com.br"
    E a senha "1234"
    Então deve aparecer a mensagem "Usuário ou senha inválidos"
