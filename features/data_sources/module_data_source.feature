Feature: Spacelift Module Data Source

  Scenario: Getting a module by ID
    Given the Spacelift provider is configured
    And a module with ID "my-module" and name "My Module" exists
    When I query the "spacelift_module" data source with module ID "my-module"
    Then the "name" attribute should be "My Module"
    And the "branch" attribute should be a non-empty string
    And the "repository" attribute should be a non-empty string
