#require 'capybara/cucumber'
#require 'capybara/rspec'
#require 'rspec'
#require 'selenium-webdriver'
#driver = Selenium::WebDriver.for :chrome
#Capybara.default_driver = :selenium
#Capybara.current_driver = :selenium_chrome

Given(/^I navigated to "([^"]*)"$/) do |url|
 visit(url)
end

And(/^I click on form authentication example$/) do
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

And(/^I verify checkbox is disappeared$/) do
 expect(page). not_to have_content('A checkbox')
  #driver.find_element(id: "checkbox").displayed?
    #puts "test failed"
  #else
    #puts "test passed"
#end
end

And(/^I see a confirmation message as "([^"]*)"$/) do |message|
  expect(page).to have_content(message)
  puts "the confirmation page is ....." + message
end

And(/^I click on dynamic loading example$/) do
  click_link("Dynamic Loading")
end

And(/^I click on first link$/) do
  click_link("Example 1: Element on page that is hidden")
end

And(/^I click on start$/) do
  click_button("Start")
end

And(/^I verify loading bar displayed$/) do
  sleep 2
  expect(page).to have_xpath('//*[@id="loading"]')
  sleep 10
end

Then(/^I see "([^"]*)" message displayed on the page$/) do |message|
  expect(page).to have_content(message)
  puts "the message displayed on the page is ......" + message
end

Given(/^I click on sortable data tables example$/) do
  sleep 1
  click_link("Sortable Data Tables")
end

Given(/^I get email address displayed for jason doe$/) do
  find(:xpath, '//*[@id="table1"]/tbody/tr[3]/td[3]').value
  #puts "the email address is " + value
end
