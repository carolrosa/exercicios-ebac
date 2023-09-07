#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma  
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação da EBAC-SHOP

Cenário: Autenticação válida
Quando eu digitar o usuário "joao@ebac-shop.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de boas vindas "Olá João!"
#critério de aceitação descrito na US está errado? 
#diz direcionado para tela de checkout; não deveria ser tela de boas vindas?

Cenário: Usuário inexistente
Quando eu digitar o usuário "nao-usuario@ebac-shop.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

Cenário: Usuário com senha inválida
Quando eu digitar o usuário "joao@ebac-shop.com.br"
E a senha "xyz"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"