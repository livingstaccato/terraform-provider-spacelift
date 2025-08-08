Feature: Spacelift Stacks Data Source

  Scenario: Getting all stacks
    Given the Spacelift provider is configured
    And two stacks exist: "stack-1" and "stack-2"
    When I query the "spacelift_stacks" data source
    Then the "stacks" attribute should be a list of at least 2 objects

  Scenario: Filtering stacks by administrative status
    Given the Spacelift provider is configured
    And an administrative stack named "admin-stack" exists
    And a non-administrative stack named "normal-stack" exists
    When I query the "spacelift_stacks" data source with administrative=true
    Then the "stacks" attribute should be a list of 1 object
    And the first object in the "stacks" list should have name "admin-stack"

  Scenario: Filtering stacks by branch
    Given the Spacelift provider is configured
    And a stack named "main-stack" on branch "main" exists
    And a stack named "develop-stack" on branch "develop" exists
    When I query the "spacelift_stacks" data source with branch "main"
    Then the "stacks" attribute should be a list of 1 object
    And the first object in the "stacks" list should have name "main-stack"
