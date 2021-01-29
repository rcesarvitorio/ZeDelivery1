class ProdutoPage
    include Capybara::DSL
    def busca(produto)
        find('#search-product-input').set produto
        list = find('#search-product-list').all('li')
        list[2].click

    end

    def valor_produto
    find('#product-total-price').text.gsub(/\D/, "").to_f
       
    end
    def adiciona_produto
        find('#add-product').click
    end
    def ir_sacola
        find('img[alt=cart]').click
    end


end