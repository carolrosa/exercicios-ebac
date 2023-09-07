#language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que eu chegue na tela de checkout sem cadastro

Cenário: Deve ser cadastrado com todos os campos obrigatórios marcados com asterisco
Quando preencher todos os campos obrigatórios corretamente
E clicar em Finalizar Compra
Então deve ser direcionado para a tela de confirmação de compra
#comportamento de sucesso não ficou claro na US:
#deveria ser uma mensagem de cadastro com sucesso? direcionado para outra tela? qual?

Esquema do Cenário: Não deve permitir campo email com formato inválido
Quando preencher o campo email com o <email>
Então deve exibir uma mensagem de erro

Exemplos:
| email          |
| "joao"         |
| "@ebac.com.br" |
| "email@mail"   |


Cenário: Ao tentar cadastrar com campos vazios, deve exibir uma mensagem de alerta
Quando não preencher nenhum campo obrigatório
E clicar em Finalizar Compra
Então deve exibir uma mensagem de alerta