require 'capybara/rspec'
require 'i18n'
require 'yaml'

I18n.enforce_available_locales = true
I18n.available_locales = [ :en, :ja ]
I18n.load_path = Dir.glob(File.expand_path('../../config/locales/*.yml', __FILE__))

$pages = I18n.available_locales.reduce({}) do |current_pages, locale|
  current_pages[locale] = YAML.load_file("config/pages.#{locale}.yml").invert
  current_pages
end

Dir.glob("spec/steps/**/*_steps.rb") { |f| load f, true }

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :phantomjs)
end
Capybara.default_driver = :selenium

Capybara.app_host = 'http://localhost:3000'

RSpec.configure do |config|
  config.include Capybara::DSL
end
