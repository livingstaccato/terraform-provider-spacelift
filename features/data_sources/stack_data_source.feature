Feature: Spacelift Stack Data Source

  Scenario: Getting a stack by ID
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" and name "My Stack" exists
    When I query the "spacelift_stack" data source with stack ID "my-stack"
    Then the "name" attribute should be "My Stack"
    And the "branch" attribute should be a non-empty string
    And the "repository" attribute should be a non-empty string
