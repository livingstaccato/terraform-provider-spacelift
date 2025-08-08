Feature: Spacelift Current Stack Data Source

  Scenario: Getting the current stack
    Given the Spacelift provider is configured to run within a Spacelift stack with ID "my-administrative-stack"
    When I query the "spacelift_current_stack" data source
    Then the "id" attribute should be "my-administrative-stack"
