Feature: Spacelift GitLab Webhook Endpoint Data Source

  Scenario: Getting the GitLab webhook endpoint
    Given the Spacelift provider is configured
    When I query the "spacelift_gitlab_webhook_endpoint" data source
    Then the "webhook_endpoint" attribute should be a valid URL
