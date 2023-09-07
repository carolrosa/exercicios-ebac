#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página da EBAC-SHOP
E navegue até a página de detalhes de um produto

Esquema do Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando eu clicar em Comprar
E não selecionar nenhuma <informacao>
Então deve exibir a mensagem "A seleção de" <informacao> " é obrigatória"

Exemplos:
| informacao   |
| "cor"        |
| "tamanho"    |
| "quantidade" |


Cenário: Deve permitir apenas 10 produtos por venda
Quando eu selecionar 11 produtos para compra
E clicar em Comprar
Então deve exibir uma mensagem de alerta

Cenário: Ao clicar no botão "limpar" deve voltar ao estado original
Quando selecionar alguma informação diferente do estado original
E clicar no botão limpar
Então as informações devem voltar para o estado original