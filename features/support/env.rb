require 'rspec/expectations'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/window'
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require 'active_support'
require 'active_support/core_ext'

  BROWSER = :chrome

  Capybara.register_driver :chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => [ "--start-maximized" ]})
    Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps})
  end
  Capybara.default_driver = BROWSER
  Capybara.default_max_wait_time = 10
  Capybara.javascript_driver = :webkit
  Capybara.page.driver.browser.manage.window.maximize

World(RSpec::Matchers)
