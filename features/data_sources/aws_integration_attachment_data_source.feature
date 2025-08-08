Feature: Spacelift AWS Integration Attachment Data Source

  Scenario: Getting the AWS integration attachment for a module
    Given the Spacelift provider is configured
    And an AWS integration with ID "some-integration-id" is attached to a module with ID "some-module-id" with read=true and write=false
    When I query the "spacelift_aws_integration_attachment" data source with the integration ID "some-integration-id" and module ID "some-module-id"
    Then the "read" attribute should be true
    And the "write" attribute should be false
    And the "attachment_id" attribute should be a non-empty string

  Scenario: Getting the AWS integration attachment for a stack
    Given the Spacelift provider is configured
    And an AWS integration with ID "some-integration-id" is attached to a stack with ID "some-stack-id" with read=true and write=true
    When I query the "spacelift_aws_integration_attachment" data source with the integration ID "some-integration-id" and stack ID "some-stack-id"
    Then the "read" attribute should be true
    And the "write" attribute should be true
    And the "attachment_id" attribute should be a non-empty string
