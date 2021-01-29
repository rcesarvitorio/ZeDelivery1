class LoginPage
    include Capybara::DSL
    def login
        find('#login-mail-input-email').set "email.testeteste@gmail.com"
        find('#login-mail-input-password').set "teste11223344"
        find('#login-mail-button-sign-in').click
    end
end