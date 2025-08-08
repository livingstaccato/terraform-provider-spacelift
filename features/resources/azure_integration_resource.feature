Feature: Spacelift Azure Integration Resource

  Scenario: Creating an Azure integration
    Given the Spacelift provider is configured
    When I create an "spacelift_azure_integration" with name "my-azure-integration" and tenant ID "my-tenant-id"
    Then the "name" attribute should be "my-azure-integration"
    And the "tenant_id" attribute should be "my-tenant-id"

  Scenario: Updating an Azure integration
    Given an "spacelift_azure_integration" with name "my-azure-integration" and tenant ID "my-tenant-id" exists
    When I update the "spacelift_azure_integration" to have name "my-renamed-azure-integration"
    Then the "name" attribute should be "my-renamed-azure-integration"

  Scenario: Deleting an Azure integration
    Given an "spacelift_azure_integration" with name "my-azure-integration" exists
    When I delete the "spacelift_azure_integration"
    Then the "spacelift_azure_integration" should not exist
