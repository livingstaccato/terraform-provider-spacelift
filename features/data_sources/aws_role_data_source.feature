Feature: Spacelift AWS Role Data Source

  Scenario: Getting the AWS role for a module
    Given the Spacelift provider is configured
    And a module with ID "k8s-module" has an AWS role with ARN "arn:aws:iam::123456789012:role/ModuleRole" attached
    When I query the "spacelift_aws_role" data source with the module ID
    Then the "role_arn" attribute should be "arn:aws:iam::123456789012:role/ModuleRole"

  Scenario: Getting the AWS role for a stack
    Given the Spacelift provider is configured
    And a stack with ID "k8s-core" has an AWS role with ARN "arn:aws:iam::123456789012:role/StackRole" attached
    When I query the "spacelift_aws_role" data source with the stack ID
    Then the "role_arn" attribute should be "arn:aws:iam::123456789012:role/StackRole"
