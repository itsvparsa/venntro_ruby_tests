Feature: A test check following scenarios are passing with specified data

 @login_valid_invalid
 Scenario Outline: Navigating to herokuapp and try to login with valid and invalid credentials
   Given I navigated to <url>
   And I click on form authentication example
   And I enter username as <username>
   And I enter password as <password>
   When I click on login button
   Then I should see login validation <message> on the page

     Examples:
     | url                                   | username   | password               | message                          |
     | "https://the-internet.herokuapp.com/" | "tomsmith" | "SuperSecretPassword!" | "You logged into a secure area!" |
     | "https://the-internet.herokuapp.com/" | "vijay"    | "SuperWrongPassword!"  | "Your username is invalid!"      |

  @dynamic_controls
  Scenario: Navigating to herokuapp and testing dynamic controls
   Given I navigated to url
   And I click on dynamic controls example
   And I verify checkbox is displayed
   And I click on "Remove" button
   And I verify checkbox is disappeared
   And I see a confirmation message as "It's gone"
   When I click on "Add" button
   Then I verify checkbox is displayed
   And I see a confirmation message as "It's back"

  @dynamic_loading
   Scenario: Navigating to herokuapp and testing dynamic loading
   Given I navigated to url
   And I click on dynamic loading example
   And I click on first link
   And I click on start
   And I verify loading bar displayed
   Then I see "Hello World!" message displayed on the page

  @webtable
  Scenario: Navigating to herokuapp and getting email address from web table
   Given I navigated to url
   And I click on sortable data tables example
   And I get email address displayed for jason doe
