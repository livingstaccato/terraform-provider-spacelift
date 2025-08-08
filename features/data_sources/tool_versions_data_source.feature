Feature: Spacelift Tool Versions Data Source

  Scenario: Getting the supported versions of Terraform
    Given the Spacelift provider is configured
    When I query the "spacelift_tool_versions" data source for tool "TERRAFORM_FOSS"
    Then the "versions" attribute should be a list of strings
    And the "versions" list should contain "1.0.0"

  Scenario: Getting the supported versions of OpenTofu
    Given the Spacelift provider is configured
    When I query the "spacelift_tool_versions" data source for tool "OPEN_TOFU"
    Then the "versions" attribute should be a list of strings
    And the "versions" list should contain "1.6.0"
