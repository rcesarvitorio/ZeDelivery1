class SacolaPage
    include Capybara::DSL

    def subtotal(valor_b, valor_r)
        valor_frete = find('#shipping-price').text.gsub(/\D/, "").to_f
        valor_b + valor_r + valor_frete              
    end
    def total
        find('#total-price').text.gsub(/\D/, "").to_f
    end
    def botao_fecha
        find('#sidebar-header-close-button').click
    end
    def delete_produto
        2.times do
        find('#product-delete-button', match: :first).click
        find('#primary-modal-button').click
        end

    end
   
end