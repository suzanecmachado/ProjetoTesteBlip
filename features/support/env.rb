require 'capybara'
require 'capybara/cucumber'
require 'report_builder'

Before do |scn|
    Capybara.current_session.driver.browser.manage.delete_all_cookies
    page.driver.quit
    Capybara.page.driver.browser.manage.window.maximize
end

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #roda no navegador
    #config.default_driver = :selenium_chrome_headless #roda com o nageador em background

    MASSA = YAML.load_file('data/massa.yml')
    EL = YAML.load_file('data/elementos.yml')
end