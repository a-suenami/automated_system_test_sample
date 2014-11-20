require 'capybara/rspec'

Dir.glob("spec/steps/**/*_steps.rb") { |f| load f, true }

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :phantomjs)
end
Capybara.default_driver = :selenium

Capybara.app_host = 'http://localhost:3000'

RSpec.configure do |config|
  config.include Capybara::DSL
end
