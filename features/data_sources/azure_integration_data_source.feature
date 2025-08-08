Feature: Spacelift Azure Integration Data Source

  Scenario: Getting an Azure integration by ID
    Given the Spacelift provider is configured
    And an Azure integration with ID "01FPAH5J0JFYSM5953T9KT2VS9", name "Prod Azure" and tenant ID "some-tenant-id" exists
    When I query the "spacelift_azure_integration" data source with the integration ID "01FPAH5J0JFYSM5953T9KT2VS9"
    Then the "name" attribute should be "Prod Azure"
    And the "tenant_id" attribute should be "some-tenant-id"

  Scenario: Getting an Azure integration by name
    Given the Spacelift provider is configured
    And an Azure integration with name "Production", and tenant ID "some-other-tenant-id" exists
    When I query the "spacelift_azure_integration" data source with the integration name "Production"
    Then the "name" attribute should be "Production"
    And the "tenant_id" attribute should be "some-other-tenant-id"
