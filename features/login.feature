Feature: Login

    Scenario: Successfully log in with valid username and password
        Given I am on the Login page
        When I enter "tomsmith" username
        And I enter "SuperSecretPassword!" password
        And I press on Login button
        Then I see a message "You logged into a secure area!"
        And I see the Logout button

    Scenario: Cannot log in with invalid username and password
        Given I am on the Login page
        When I enter "asdges" username
        And I enter "adsfhrdgsre" password
        And I press on Login button
        Then I see a message "Your username is invalid!"
        And I don't see the Logout button