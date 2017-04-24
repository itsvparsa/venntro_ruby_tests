Feature: login test with valid credentials and invalid credentials

@login
Scenario Outline: Navigating to herokuapp and try to login with valid and invalid credentials
Given I navigated to "url"
And I click on from authentication example
And I enter username as "username"
And I enter password as "password"
When I click on login button
Then I should see login validation "message" on the page

Examples:
| url                                 | username | password             | message                        |
| https://the-internet.herokuapp.com/ | tomsmith | SuperSecretPassword! | You logged into a secure area! |
| https://the-internet.herokuapp.com/ | vijay    | SuperWrongPassword!  | Your username is invalid!      |
