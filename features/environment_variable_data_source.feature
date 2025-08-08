Feature: Spacelift Environment Variable Data Source

  Scenario: Getting an environment variable from a context
    Given the Spacelift provider is configured
    And a context with ID "prod-k8s-ie" has an environment variable named "KUBECONFIG" with value "some-kubeconfig"
    When I query the "spacelift_environment_variable" data source for context "prod-k8s-ie" and variable "KUBECONFIG"
    Then the "value" attribute should be "some-kubeconfig"
    And the "write_only" attribute should be false

  Scenario: Getting an environment variable from a module
    Given the Spacelift provider is configured
    And a module with ID "k8s-module" has an environment variable named "KUBECONFIG" with value "some-other-kubeconfig"
    When I query the "spacelift_environment_variable" data source for module "k8s-module" and variable "KUBECONFIG"
    Then the "value" attribute should be "some-other-kubeconfig"
    And the "write_only" attribute should be false

  Scenario: Getting an environment variable from a stack
    Given the Spacelift provider is configured
    And a stack with ID "k8s-core" has an environment variable named "KUBECONFIG" with value "yet-another-kubeconfig"
    When I query the "spacelift_environment_variable" data source for stack "k8s-core" and variable "KUBECONFIG"
    Then the "value" attribute should be "yet-another-kubeconfig"
    And the "write_only" attribute should be false
