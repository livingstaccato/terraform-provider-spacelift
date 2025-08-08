Feature: Spacelift AWS Role Resource

  Scenario: Creating an AWS role for a stack
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" exists
    When I create an "spacelift_aws_role" for stack "my-stack" with role ARN "arn:aws:iam::123456789012:role/SpaceliftRole"
    Then the "role_arn" attribute should be "arn:aws:iam::123456789012:role/SpaceliftRole"

  Scenario: Updating an AWS role for a stack
    Given an "spacelift_aws_role" for stack "my-stack" with role ARN "arn:aws:iam::123456789012:role/SpaceliftRole" exists
    When I update the "spacelift_aws_role" to have role ARN "arn:aws:iam::123456789012:role/NewSpaceliftRole"
    Then the "role_arn" attribute should be "arn:aws:iam::123456789012:role/NewSpaceliftRole"

  Scenario: Deleting an AWS role for a stack
    Given an "spacelift_aws_role" for stack "my-stack" exists
    When I delete the "spacelift_aws_role"
    Then the "spacelift_aws_role" should not exist

  Scenario: Creating an AWS role for a module
    Given the Spacelift provider is configured
    And a module with ID "my-module" exists
    When I create an "spacelift_aws_role" for module "my-module" with role ARN "arn:aws:iam::123456789012:role/SpaceliftRole"
    Then the "role_arn" attribute should be "arn:aws:iam::123456789012:role/SpaceliftRole"
