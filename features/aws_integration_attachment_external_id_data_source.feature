Feature: Spacelift AWS Integration Attachment External ID Data Source

  Scenario: Generating the external ID for a stack attachment
    Given the Spacelift provider is configured
    And an AWS integration with ID "some-integration-id" exists
    When I query the "spacelift_aws_integration_attachment_external_id" data source for a stack with ID "my-stack-id", read=true and write=true
    Then the "external_id" attribute should be "some-external-id"
    And the "assume_role_policy_statement" attribute should be a valid JSON policy statement

  Scenario: Generating the external ID for a module attachment
    Given the Spacelift provider is configured
    And an AWS integration with ID "some-integration-id" exists
    When I query the "spacelift_aws_integration_attachment_external_id" data source for a module with ID "my-module-id", read=true and write=false
    Then the "external_id" attribute should be "some-other-external-id"
    And the "assume_role_policy_statement" attribute should be a valid JSON policy statement
