Feature: Spacelift Azure DevOps Integration Data Source

  Scenario: Getting the default Azure DevOps integration
    Given the Spacelift provider is configured
    And a default Azure DevOps integration exists with name "Default ADO" and organization URL "https://dev.azure.com/my-org"
    When I query the "spacelift_azure_devops_integration" data source without an ID
    Then the "name" attribute should be "Default ADO"
    And the "organization_url" attribute should be "https://dev.azure.com/my-org"

  Scenario: Getting an Azure DevOps integration by ID
    Given the Spacelift provider is configured
    And an Azure DevOps integration with ID "some-ado-integration-id", name "My ADO" and organization URL "https://dev.azure.com/my-other-org" exists
    When I query the "spacelift_azure_devops_integration" data source with the integration ID "some-ado-integration-id"
    Then the "name" attribute should be "My ADO"
    And the "organization_url" attribute should be "https://dev.azure.com/my-other-org"
