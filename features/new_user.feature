Feature: Creates new Energy Saver user
  Creates new user
  Checks that the new user is logged in
  
  Background: 
    Given I am on the Sign up page


  Scenario: Creates new user
    And I fill in the "user_email" field with "example@example.com"
    And I fill in the "user_password" field with "12345678"
    And I fill in the "user_password_confirmation" field with "12345678"
    When I press "Sign up"
    Then I should see "Sign Out"
    
  Scenario: Password too short
    And I fill in the "user_email" field with "example@example.com"
    And I fill in the "user_password" field with "1"
    And I fill in the "user_password_confirmation" field with "1"
    When I press "Sign up"
    Then I should see "Password is too short (minimum is 8 characters)"
  
  Scenario: Passwords do not match
    And I fill in the "user_email" field with "example@example.com"
    And I fill in the "user_password" field with "12345678"
    And I fill in the "user_password_confirmation" field with "12345677"
    When I press "Sign up"
    Then I should see "Password confirmation doesn't match Password"
  
  Scenario: No confirmation password
    And I fill in the "user_email" field with "example@example.com"
    And I fill in the "user_password" field with "12345678"
    When I press "Sign up"
    Then I should see "Password confirmation doesn't match Password"
    
  Scenario: No email entered
    And I fill in the "user_password" field with "12345678"
    And I fill in the "user_password_confirmation" field with "12345678"
    When I press "Sign up"
    Then I should see "Email can't be blank"
    
  Scenario: No password entered
    And I fill in the "user_email" field with "example@example.com"
    And I fill in the "user_password_confirmation" field with "12345678"
    When I press "Sign up"
    Then I should see "Password can't be blank"
  
  Scenario: Poorly formed email
    And I fill in the "user_email" field with "example"
    And I fill in the "user_password" field with "12345678"
    And I fill in the "user_password_confirmation" field with "12345678"
    When I press "Sign up"
    Then I should see "Email is invalid"
