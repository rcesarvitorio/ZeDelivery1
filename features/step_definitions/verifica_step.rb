Dado("que o usuário cadastrado e logado escolhe os produtos {string} e {string}") do |brahma, redbull|
    @home_page.go
    @home_page.signin
    @login_page.login
    @produto_page.busca(brahma)
    @valor_b = @produto_page.valor_produto
    @produto_page.adiciona_produto
    @sacola_page.botao_fecha
    @produto_page.busca(redbull)
    @valor_r = @produto_page.valor_produto
    @produto_page.adiciona_produto
    @sacola_page.botao_fecha
    end  
Quando("seguir para finalizar a compra") do
    @produto_page.ir_sacola
end
  
Então("o valor que aparece para pagamento é exatamente a soma dos produtos com acréscimo do frete.") do
   expect(@sacola_page.subtotal(@valor_b, @valor_r)).to eql @sacola_page.total
   
end