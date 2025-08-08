Feature: Spacelift Azure Integrations Data Source

  Scenario: Getting a list of all Azure integrations
    Given the Spacelift provider is configured
    And two Azure integrations exist: "prod" and "dev"
    When I query the "spacelift_azure_integrations" data source
    Then the "integrations" attribute should be a list of 2 objects
    And the first object in the "integrations" list should have name "prod" and tenant ID "tenant-id-prod"
    And the second object in the "integrations" list should have name "dev" and tenant ID "tenant-id-dev"
