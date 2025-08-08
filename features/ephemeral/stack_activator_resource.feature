Feature: Spacelift Stack Activator Resource

  Scenario: Activating a stack
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" is disabled
    When I create a "spacelift_stack_activator" for stack "my-stack" with enabled=true
    Then the stack "my-stack" should be enabled

  Scenario: Deactivating a stack
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" is enabled
    When I create a "spacelift_stack_activator" for stack "my-stack" with enabled=false
    Then the stack "my-stack" should be disabled
