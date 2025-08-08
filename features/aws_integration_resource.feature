Feature: Spacelift AWS Integration Resource

  Scenario: Creating an AWS integration
    Given the Spacelift provider is configured
    When I create an "spacelift_aws_integration" with name "my-aws-integration" and role ARN "arn:aws:iam::123456789012:role/SpaceliftRole"
    Then the "name" attribute should be "my-aws-integration"
    And the "role_arn" attribute should be "arn:aws:iam::123456789012:role/SpaceliftRole"

  Scenario: Updating an AWS integration
    Given an "spacelift_aws_integration" with name "my-aws-integration" and role ARN "arn:aws:iam::123456789012:role/SpaceliftRole" exists
    When I update the "spacelift_aws_integration" to have name "my-renamed-aws-integration"
    Then the "name" attribute should be "my-renamed-aws-integration"

  Scenario: Deleting an AWS integration
    Given an "spacelift_aws_integration" with name "my-aws-integration" exists
    When I delete the "spacelift_aws_integration"
    Then the "spacelift_aws_integration" should not exist
