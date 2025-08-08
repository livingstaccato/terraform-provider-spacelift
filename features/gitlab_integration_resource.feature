Feature: Spacelift GitLab Integration Resource

  Scenario: Creating a GitLab integration
    Given the Spacelift provider is configured
    When I create a "spacelift_gitlab_integration" with name "my-gitlab-integration", api_host "https://gitlab.example.com", user_facing_host "https://gitlab.example.com" and private_token "my-token"
    Then the "name" attribute should be "my-gitlab-integration"
    And the "api_host" attribute should be "https://gitlab.example.com"

  Scenario: Updating a GitLab integration
    Given a "spacelift_gitlab_integration" with name "my-gitlab-integration" and api_host "https://gitlab.example.com" exists
    When I update the "spacelift_gitlab_integration" to have api_host "https://new-gitlab.example.com"
    Then the "api_host" attribute should be "https://new-gitlab.example.com"

  Scenario: Deleting a GitLab integration
    Given a "spacelift_gitlab_integration" with name "my-gitlab-integration" exists
    When I delete the "spacelift_gitlab_integration"
    Then the "spacelift_gitlab_integration" should not exist
