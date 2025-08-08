Feature: Spacelift GitLab Integration Data Source

  Scenario: Getting the default GitLab integration
    Given the Spacelift provider is configured
    And a default GitLab integration exists with name "Default GitLab" and API host "https://gitlab.com"
    When I query the "spacelift_gitlab_integration" data source without an ID
    Then the "name" attribute should be "Default GitLab"
    And the "api_host" attribute should be "https://gitlab.com"

  Scenario: Getting a GitLab integration by ID
    Given the Spacelift provider is configured
    And a GitLab integration with ID "some-gitlab-integration-id", name "My GitLab" and API host "https://my-gitlab.example.com" exists
    When I query the "spacelift_gitlab_integration" data source with the integration ID "some-gitlab-integration-id"
    Then the "name" attribute should be "My GitLab"
    And the "api_host" attribute should be "https://my-gitlab.example.com"
