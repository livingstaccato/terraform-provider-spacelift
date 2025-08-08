Feature: Spacelift GitHub Enterprise Integration Data Source

  Scenario: Getting the default GitHub Enterprise integration
    Given the Spacelift provider is configured
    And a default GitHub Enterprise integration exists with name "Default GHE" and API host "https://github.example.com"
    When I query the "spacelift_github_enterprise_integration" data source without an ID
    Then the "name" attribute should be "Default GHE"
    And the "api_host" attribute should be "https://github.example.com"

  Scenario: Getting a GitHub Enterprise integration by ID
    Given the Spacelift provider is configured
    And a GitHub Enterprise integration with ID "some-ghe-integration-id", name "My GHE" and API host "https://my-github.example.com" exists
    When I query the "spacelift_github_enterprise_integration" data source with the integration ID "some-ghe-integration-id"
    Then the "name" attribute should be "My GHE"
    And the "api_host" attribute should be "https://my-github.example.com"
