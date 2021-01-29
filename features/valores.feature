#language:pt

Funcionalidade: Sacola de compra
    O usuário cadastrado e logado após escolher seus produtos verifica o preço.
    @valor
    Cenário: Verificação do somatório dos pedidos
        Dado que o usuário cadastrado e logado escolhe os produtos "Brahma" e "Red Bull"
        Quando seguir para finalizar a compra
        Então o valor que aparece para pagamento é exatamente a soma dos produtos com acréscimo do frete.