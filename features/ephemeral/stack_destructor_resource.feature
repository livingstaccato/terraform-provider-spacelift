Feature: Spacelift Stack Destructor Resource

  Scenario: Creating a stack destructor
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" exists
    When I create a "spacelift_stack_destructor" for stack "my-stack"
    Then the resource should exist in the state

  Scenario: Destroying a stack destructor
    Given a "spacelift_stack_destructor" for stack "my-stack" exists
    When I delete the "spacelift_stack_destructor"
    Then a destruction run should be triggered on stack "my-stack"
    And the stack "my-stack" should be deleted

  Scenario: Deactivating a stack destructor
    Given a "spacelift_stack_destructor" for stack "my-stack" exists
    When I update the "spacelift_stack_destructor" to be deactivated
    And I delete the "spacelift_stack_destructor"
    Then the stack "my-stack" should not be deleted
