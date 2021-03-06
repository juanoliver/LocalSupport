Feature: Password retrieval
  As an existing User
  So that I can recover a lost password
  I want to be able to ask that system for a new password
  Tracker story ID: https://www.pivotaltracker.com/story/show/47376361

Background:
Given the following users are registered:
| email             | password |
| jcodefx@gmail.com | pppppppp |

Scenario: Retrieve password for an existing user
  Given I am on the sign in page
  When I follow "Forgot your password?"
  And I fill in "Email" with "jcodefx@gmail.com"
  And I press "Send me reset password instructions"
  Then I should see "You will receive an email with instructions about how to reset your password in a few minutes."

Scenario: Retrieve password for a non-existent user
  Given I am on the sign in page
  When I follow "Forgot your password?"
  And I fill in "Email" with "sampdingo@hotmail.com"
  And I press "Send me reset password instructions"
  And I should see "Email not found in our database. Sorry!"
  #And I should be on the sign up page 
