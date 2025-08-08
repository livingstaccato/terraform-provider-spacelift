Feature: Spacelift Environment Variable Resource

  Scenario: Creating an environment variable for a stack
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" exists
    When I create an "spacelift_environment_variable" for stack "my-stack" with name "MY_VAR" and value "my-value"
    Then the "value" attribute should be "my-value"

  Scenario: Deleting an environment variable from a stack
    Given an "spacelift_environment_variable" for stack "my-stack" with name "MY_VAR" exists
    When I delete the "spacelift_environment_variable"
    Then the "spacelift_environment_variable" should not exist

  Scenario: Creating an environment variable for a context
    Given the Spacelift provider is configured
    And a context with ID "my-context" exists
    When I create an "spacelift_environment_variable" for context "my-context" with name "MY_VAR" and value "my-value"
    Then the "value" attribute should be "my-value"

  Scenario: Creating an environment variable for a module
    Given the Spacelift provider is configured
    And a module with ID "my-module" exists
    When I create an "spacelift_environment_variable" for module "my-module" with name "MY_VAR" and value "my-value"
    Then the "value" attribute should be "my-value"
