Feature: Spacelift Stack Dependency Resource

  Scenario: Creating a stack dependency
    Given the Spacelift provider is configured
    And a stack with ID "app-stack" exists
    And a stack with ID "infra-stack" exists
    When I create a "spacelift_stack_dependency" where "app-stack" depends on "infra-stack"
    Then the "stack_id" attribute should be "app-stack"
    And the "depends_on_stack_id" attribute should be "infra-stack"

  Scenario: Deleting a stack dependency
    Given a "spacelift_stack_dependency" where "app-stack" depends on "infra-stack" exists
    When I delete the "spacelift_stack_dependency"
    Then the "spacelift_stack_dependency" should not exist
