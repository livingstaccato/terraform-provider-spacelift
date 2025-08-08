Feature: Spacelift Role Data Source

  Scenario: Getting a role by ID
    Given the Spacelift provider is configured
    And a role with ID "my-role-id" and name "My Role" exists
    When I query the "spacelift_role" data source with role ID "my-role-id"
    Then the "name" attribute should be "My Role"
    And the "actions" attribute should be a non-empty list of strings

  Scenario: Getting a role by slug
    Given the Spacelift provider is configured
    And a role with slug "my-role-slug" and name "My Role" exists
    When I query the "spacelift_role" data source with slug "my-role-slug"
    Then the "name" attribute should be "My Role"
    And the "actions" attribute should be a non-empty list of strings
