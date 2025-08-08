Feature: Spacelift Stack Dependency Reference Resource

  Scenario: Creating a stack dependency reference
    Given the Spacelift provider is configured
    And a stack dependency with ID "my-stack-dep" exists
    When I create a "spacelift_stack_dependency_reference" for stack dependency "my-stack-dep" with output "my-output" and input "my-input"
    Then the "output_name" attribute should be "my-output"
    And the "input_name" attribute should be "my-input"

  Scenario: Updating a stack dependency reference
    Given a "spacelift_stack_dependency_reference" for stack dependency "my-stack-dep" with output "my-output" and input "my-input" exists
    When I update the "spacelift_stack_dependency_reference" to have output "my-new-output" and input "my-new-input"
    Then the "output_name" attribute should be "my-new-output"
    And the "input_name" attribute should be "my-new-input"

  Scenario: Deleting a stack dependency reference
    Given a "spacelift_stack_dependency_reference" for stack dependency "my-stack-dep" exists
    When I delete the "spacelift_stack_dependency_reference"
    Then the "spacelift_stack_dependency_reference" should not exist
