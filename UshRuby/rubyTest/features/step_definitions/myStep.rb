require 'rspec/expectations'


Given('I search googl with {string}.') do |value| 
  @browser.find_element(:name, "q").send_keys value
 sleep 2
end

When('I click the search.') do
  @browser.find_element(:name, "btnK").click
   sleep 2
end

Then('Search result should show duck.') do
  linkText =  @browser.find_element(:xpath => "/html/body/div[7]/div/div[9]/div[1]/div/div[2]/div[2]/div/div/div[1]/div/div/div/div[1]/a/h3").text
  puts linkText 
 expect(linkText.include? "Duck").to be true
end