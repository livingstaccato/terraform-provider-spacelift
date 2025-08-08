Feature: Spacelift Webhook Resource

  Scenario: Creating a webhook for a stack
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" exists
    When I create a "spacelift_webhook" for stack "my-stack" with endpoint "https://example.com/webhook" and secret "my-secret"
    Then the "endpoint" attribute should be "https://example.com/webhook"
    And the "enabled" attribute should be true

  Scenario: Updating a webhook
    Given a "spacelift_webhook" for stack "my-stack" with endpoint "https://example.com/webhook" exists
    When I update the "spacelift_webhook" to have endpoint "https://example.com/new-webhook" and enabled=false
    Then the "endpoint" attribute should be "https://example.com/new-webhook"
    And the "enabled" attribute should be false

  Scenario: Deleting a webhook
    Given a "spacelift_webhook" for stack "my-stack" exists
    When I delete the "spacelift_webhook"
    Then the "spacelift_webhook" should not exist
