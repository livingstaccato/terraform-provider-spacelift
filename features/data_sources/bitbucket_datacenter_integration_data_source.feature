Feature: Spacelift Bitbucket Datacenter Integration Data Source

  Scenario: Getting the default Bitbucket Datacenter integration
    Given the Spacelift provider is configured
    And a default Bitbucket Datacenter integration exists with name "Default Bitbucket DC" and API host "https://bitbucket.example.com"
    When I query the "spacelift_bitbucket_datacenter_integration" data source without an ID
    Then the "name" attribute should be "Default Bitbucket DC"
    And the "api_host" attribute should be "https://bitbucket.example.com"

  Scenario: Getting a Bitbucket Datacenter integration by ID
    Given the Spacelift provider is configured
    And a Bitbucket Datacenter integration with ID "some-bb-dc-integration-id", name "My Bitbucket DC" and API host "https://my-bitbucket.example.com" exists
    When I query the "spacelift_bitbucket_datacenter_integration" data source with the integration ID "some-bb-dc-integration-id"
    Then the "name" attribute should be "My Bitbucket DC"
    And the "api_host" attribute should be "https://my-bitbucket.example.com"
