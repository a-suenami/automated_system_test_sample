require 'capybara/rspec'

RSpec.configure do |config|
  config.include Capybara::DSL

  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :phantomjs)
  end
  Capybara.default_driver = :selenium
end
