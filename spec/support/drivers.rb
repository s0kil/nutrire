require 'webdrivers'
require 'capybara/apparition'

Capybara.server = :puma, { Silent: true }

Capybara.register_driver :chrome_headless do |app|
  Capybara::Apparition::Driver.new(app, { headless: true, browser_options: { 'headless': '', 'no-sandbox': '' } })
end

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new(args: %w[no-sandbox])
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

RSpec.configure do |config|
  config.before(:all, type: :feature) do
    Capybara.default_driver = :chrome
  end

  config.before(:all, type: :system) do
    driven_by(:chrome_headless)
  end
end
