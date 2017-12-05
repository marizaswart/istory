Feature: Sign Up
  As a user,
  In order to access stories,
  I would like to be able to create an account

  Scenario: User provides valid information and signs up
    Given I am on the sign up page
    When I enter "Email" as "random@random.com"
    And I enter "Password" as "password"
    And I enter "Password confirmation" as "password"
    And I click "Sign up"
    Then I should be on the landing page
