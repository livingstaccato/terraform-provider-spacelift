Feature: Spacelift Bitbucket Cloud Integration Data Source

  Scenario: Getting the default Bitbucket Cloud integration
    Given the Spacelift provider is configured
    And a default Bitbucket Cloud integration exists with name "Default Bitbucket" and username "spacelift"
    When I query the "spacelift_bitbucket_cloud_integration" data source without an ID
    Then the "name" attribute should be "Default Bitbucket"
    And the "username" attribute should be "spacelift"

  Scenario: Getting a Bitbucket Cloud integration by ID
    Given the Spacelift provider is configured
    And a Bitbucket Cloud integration with ID "some-bb-cloud-integration-id", name "My Bitbucket" and username "my-username" exists
    When I query the "spacelift_bitbucket_cloud_integration" data source with the integration ID "some-bb-cloud-integration-id"
    Then the "name" attribute should be "My Bitbucket"
    And the "username" attribute should be "my-username"
