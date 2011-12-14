Feature: Signing in
  In order to use the site
  As a user
  I want to be able to sign in

  Background:
    Given there are the following users:
      | email | password | unconfirmed |
      | user@ticketee.com | password | true |

      # Scenario: Signing in via confirmation
      And "user@ticketee.com" opens the email with subject "Confirmation instructions"
      And they click the first link in the email
      Then I should see "Your account was successfully confirmed"
      And I should see "Signed in as user@ticketee.com"
      Then I follow "Sign out"
      
      Scenario: Signing in via form
      # And I am on the homepage
      And I should see "Sign in"
      And I should see "Sign up"
      When I follow "Sign in"
      And I fill in "Email" with "user@ticketee.com"
      And I fill in "Password" with "password"
      And I press "Sign in"
      Then I should see "Signed in successfully."
      And I should see "Signed in as user@ticketee.com"
      And I should see "Sign out"
