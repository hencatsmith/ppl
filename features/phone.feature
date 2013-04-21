
Feature: ppl phone

  Scenario: Add a phone number to a contact
    Given I am in an address book with a blank contact called bob
    And I run "ppl phone bob 01234567890"
    Then bob should have 1 phone number
    And the 1st phone number should be "01234567890"

  Scenario: Remove a phone number from a contact
    Given I am in the same address book as before
    And I run "ppl phone bob --delete 01234567890"
    Then bob should have 0 phone numbers
