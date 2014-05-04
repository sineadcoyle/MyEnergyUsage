Feature: Logs in Energy Saver User
  Logs in Energy Saver User
  Checks that the new user has access to tabs
  
  Background: 
    Given I am on the Sign in page
    And a user with email "example@example.com" and password "12345678"
    
  Scenario: Logs in user
    And I fill in the "user_email" field with "example@example.com"
    And I fill in the "user_password" field with "12345678"
    When I press "Sign in"
    Then I should see "Sign Out"
    And I should see "example@example.com"
  
  Scenario: Email incorrect
    And I fill in the "user_email" field with "example@example.co"
    And I fill in the "user_password" field with "12345678"
    When I press "Sign in"
    Then I should see "Invalid email or password."
    
  Scenario: Password incorrect
    And I fill in the "user_email" field with "example@example.com"
    And I fill in the "user_password" field with "123456789"
    When I press "Sign in"
    Then I should see "Invalid email or password."
    
  Scenario: No email
    And I fill in the "user_password" field with "123456789"
    When I press "Sign in"
    Then I should see "Invalid email or password."
    
  Scenario: No password
    And I fill in the "user_email" field with "example@example.com"
    When I press "Sign in"
    Then I should see "Invalid email or password."
    
  Scenario: Poorly formed email
    And I fill in the "user_email" field with "example"
    And I fill in the "user_password" field with "123456789"
    When I press "Sign in"
    Then I should see "Sign In"