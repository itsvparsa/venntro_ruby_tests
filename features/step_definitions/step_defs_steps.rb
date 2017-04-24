#require 'capybara/cucumber'
#Capybara.app = "https://the-internet.herokuapp.com/"
#require 'capybara/rspec'
#require 'rspec'
#require 'selenium-webdriver'
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

