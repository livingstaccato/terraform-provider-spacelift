Feature: Spacelift Role Resource

  Scenario: Creating a role
    Given the Spacelift provider is configured
    When I create a "spacelift_role" with name "my-role" and actions ["SPACE_READ"]
    Then the "name" attribute should be "my-role"
    And the "actions" attribute should contain "SPACE_READ"

  Scenario: Updating a role
    Given a "spacelift_role" with name "my-role" and actions ["SPACE_READ"] exists
    When I update the "spacelift_role" to have name "my-renamed-role" and actions ["SPACE_WRITE"]
    Then the "name" attribute should be "my-renamed-role"
    And the "actions" attribute should contain "SPACE_WRITE"

  Scenario: Deleting a role
    Given a "spacelift_role" with name "my-role" exists
    When I delete the "spacelift_role"
    Then the "spacelift_role" should not exist
