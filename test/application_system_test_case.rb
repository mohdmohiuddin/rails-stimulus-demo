# require "test_helper"

# class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
#   driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
# end
# frozen_string_literal: true

require "test_helper"
require_relative "../config/environment"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase

  Capybara.register_driver :headless_chrome do |app|
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.open_timeout = 120
    client.read_timeout = 120
    Capybara::Selenium::Driver.new app, browser:     :chrome,
                                        http_client: client,
                                        options:     Selenium::WebDriver::Chrome::Options.new(
                                          args: ["headless", "no-sandbox", "disable-gpu", "--window-size=1400,1400"])
  end

  if ENV["WATCH"]
    driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  else
    driven_by :headless_chrome
  end
end

