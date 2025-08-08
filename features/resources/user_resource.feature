Feature: Spacelift User Resource

  Scenario: Creating a user
    Given the Spacelift provider is configured
    When I create a "spacelift_user" with username "my-user" and email "my-user@example.com"
    Then the "username" attribute should be "my-user"
    And the "invitation_email" attribute should be "my-user@example.com"

  Scenario: Updating a user's policy
    Given a "spacelift_user" with username "my-user" exists
    When I update the "spacelift_user" to have a policy for space "my-space" with role "ADMIN"
    Then the "policy" attribute should contain a policy for space "my-space" with role "ADMIN"

  Scenario: Deleting a user
    Given a "spacelift_user" with username "my-user" exists
    When I delete the "spacelift_user"
    Then the "spacelift_user" should not exist
