Feature: Spacelift Current Space Data Source

  Scenario: Getting the current space
    Given the Spacelift provider is configured to run within a Spacelift space with ID "my-space" and name "My Space"
    When I query the "spacelift_current_space" data source
    Then the "id" attribute should be "my-space"
    And the "name" attribute should be "My Space"
