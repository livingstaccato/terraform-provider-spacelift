Feature: Spacelift AWS Integration Attachment Resource

  Scenario: Creating an AWS integration attachment for a stack
    Given the Spacelift provider is configured
    And an AWS integration with ID "my-aws-integration" exists
    And a stack with ID "my-stack" exists
    When I create an "spacelift_aws_integration_attachment" for integration "my-aws-integration" and stack "my-stack" with read=true and write=true
    Then the "read" attribute should be true
    And the "write" attribute should be true

  Scenario: Updating an AWS integration attachment
    Given an "spacelift_aws_integration_attachment" for integration "my-aws-integration" and stack "my-stack" with read=true and write=true exists
    When I update the "spacelift_aws_integration_attachment" to have read=false
    Then the "read" attribute should be false
    And the "write" attribute should be true

  Scenario: Deleting an AWS integration attachment
    Given an "spacelift_aws_integration_attachment" for integration "my-aws-integration" and stack "my-stack" exists
    When I delete the "spacelift_aws_integration_attachment"
    Then the "spacelift_aws_integration_attachment" should not exist
