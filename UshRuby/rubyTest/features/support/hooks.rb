require 'selenium-webdriver'

Before do |scenario|	
  Selenium::WebDriver::Chrome.driver_path = File.dirname(__FILE__)+"/chromedriver.exe" 
  @browser = Selenium::WebDriver.for :chrome
  @browser.navigate.to "http://www.google.com"
end

After do
  @browser.close
end