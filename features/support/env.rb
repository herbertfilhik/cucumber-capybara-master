require 'capybara'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara/dsl'
require 'parallel_tests'

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new app, browser: :firefox
end

World(Capybara::DSL)