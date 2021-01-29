class HomePage
    include Capybara::DSL
    def go
        visit '/'
    end
    def signin
        find('#age-gate-button-yes').click
        find('#welcome-button-sign-in').click
    end
    
end