Feature: Spacelift Security Email Resource

  Scenario: Creating a security email
    Given the Spacelift provider is configured
    When I create a "spacelift_security_email" with email "security@example.com"
    Then the "email" attribute should be "security@example.com"

  Scenario: Updating a security email
    Given a "spacelift_security_email" with email "security@example.com" exists
    When I update the "spacelift_security_email" to have email "new-security@example.com"
    Then the "email" attribute should be "new-security@example.com"

  Scenario: Deleting a security email
    Given a "spacelift_security_email" with email "new-security@example.com" exists
    When I delete the "spacelift_security_email"
    Then the "spacelift_security_email" should be removed from the state but a warning should be issued that it is not deleted from Spacelift
