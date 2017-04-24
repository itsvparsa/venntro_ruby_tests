#require 'capybara/cucumber'
#Capybara.app = "https://the-internet.herokuapp.com/"
#require 'capybara/rspec'
#require 'rspec'
#require 'selenium-webdriver'
#driver = Selenium::WebDriver.for :chrome
#Capybara.app = MyRackApp
#Capybara.default_driver = :selenium
#Capybara.current_driver = :selenium_chrome

Given(/^I navigated to "([^"]*)"$/) do |url|
 visit(url)
end

And(/^I click on from authentication example$/) do
 #find_link("Form Authentication").click
 click_link("Form Authentication")
end

And(/^I enter username as "([^"]*)"$/) do |username|
 fill_in('Username', with: username)
 #find_field(id: "username").fill_in( with: username)
end

And(/^I enter password as "([^"]*)"$/) do |password|
 fill_in('Password', with: password)
 #find_field(id: "password").fill_in(password)
end

When(/^I click on login button$/) do
 click_button("Login")

end

Then(/^I should see login validation "([^"]*)" on the page$/) do |message|
 expect(page).to have_content(message)
 #find(:id, 'flash').to eq(message)
 #find(:xpath, "//*[@id='flash']"). to eq(message)
 puts "The validation message is ........" + message
end

Given(/^I navigated to url$/) do
  visit('https://the-internet.herokuapp.com')
end

And(/^I click on dynamic controls example$/) do
  click_link("Dynamic Controls")
end

And(/^I verify checkbox is displayed$/) do
 sleep 5
 #puts "before clicking on remove button checkbox is displayed?....." + driver.find_element(id: 'checkbox').displayed?
 expect(page). to have_content('A checkbox')
end

And(/^I click on "([^"]*)" button$/) do |button|
 sleep 3
 click_button(button)
 sleep 5
end

Given(/^I verify checkbox is disappeared$/) do
 expect(page). not_to have_content('A checkbox')
  #driver.find_element(id: "checkbox").displayed?
    #puts "test failed"
  #else
    #puts "test passed"
#end
end

And(/^I see a confirmation message as "([^"]*)"$/) do |message|
  expect(page).to have_content(message)

end

