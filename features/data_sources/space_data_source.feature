Feature: Spacelift Space Data Source

  Scenario: Getting a space by ID
    Given the Spacelift provider is configured
    And a space with ID "my-space" and name "My Space" exists
    When I query the "spacelift_space" data source with space ID "my-space"
    Then the "name" attribute should be "My Space"
    And the "description" attribute should be a string
    And the "parent_space_id" attribute should be a non-empty string
