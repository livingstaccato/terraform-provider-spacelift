Feature: Spacelift Bitbucket Datacenter Integration Resource

  Scenario: Creating a Bitbucket Datacenter integration
    Given the Spacelift provider is configured
    When I create a "spacelift_bitbucket_datacenter_integration" with name "my-bb-dc-integration", api_host "https://bitbucket.example.com", user_facing_host "https://bitbucket.example.com", username "my-user" and access_token "my-token"
    Then the "name" attribute should be "my-bb-dc-integration"
    And the "api_host" attribute should be "https://bitbucket.example.com"

  Scenario: Updating a Bitbucket Datacenter integration
    Given a "spacelift_bitbucket_datacenter_integration" with name "my-bb-dc-integration" and api_host "https://bitbucket.example.com" exists
    When I update the "spacelift_bitbucket_datacenter_integration" to have name "my-renamed-bb-dc-integration"
    Then the "name" attribute should be "my-renamed-bb-dc-integration"

  Scenario: Deleting a Bitbucket Datacenter integration
    Given a "spacelift_bitbucket_datacenter_integration" with name "my-bb-dc-integration" exists
    When I delete the "spacelift_bitbucket_datacenter_integration"
    Then the "spacelift_bitbucket_datacenter_integration" should not exist
