require "report_builder"
require "date"

Before do
    @home_page = HomePage.new
    @login_page = LoginPage.new
    @produto_page = ProdutoPage.new
    @sacola_page = SacolaPage.new
end
After do
    @sacola_page.delete_produto
    temp_shot = page.save_screenshot('log/temp_shot.png')
    screenshot = Base64.encode64(File.open(temp_shot, 'rb').read)
    embed(screenshot, "image/png", "Screenshot")
end
@current_date = DateTime.now
at_exit do
    ReportBuilder.configure do |config|
     config.input_path = 'log/report.json'
     config.report_path = 'log/report'
     config.report_types = [:html]
     config.report_title = 'WebSite - ZéDelivery'
     config.compress_image = true
     config.additional_info = {"App" => "Web", "Data de execução" => @current_date}  
    end
    ReportBuilder.build_report
end