Feature: Register Test

  @regression
  Scenario: verify user should navigate to register page successfully
    Given I am on homepage
    When  I click on register link
    Then  I should navigate to registation page

  @regression
  Scenario: verify that firstname lastname email password and ConfirmPassword fields are mandatory
    Given I am on homepage
    When  I click on register link
    And   I should navigate to registation page
    And   I click on register button
    Then  I should see the error message "First name is required." next to Firstname field
    And   I should see the error message "Last name is required." next to Lastname field
    And   I should see the error message "Email is required." next to emial field
    And   I should see the error message "Password is required." next to Password field
    And   I should see the error message "Password is required." next to confirm password field

  @regression
  Scenario: verify that user should create account successfully
    Given I am on homepage
    When  I click on register link
    And   I should navigate to registation page
    And   I enter "Kaku" as firstname
    And   I enter "Patel" as lastname
    And   I select "10" day of birth
    And   I select "May" month of birth
    And   I select "1986" year of birth
    And   I enter  "hellokaku@gmail.com" email address
    And   I enter "123456" password as  password
    And   I enter  "123456" as confirm password
    And   I click on register button
    Then  I should see Your registration completed