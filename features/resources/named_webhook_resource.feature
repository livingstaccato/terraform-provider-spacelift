Feature: Spacelift Named Webhook Resource

  Scenario: Creating a named webhook
    Given the Spacelift provider is configured
    And a space with ID "my-space" exists
    When I create a "spacelift_named_webhook" in space "my-space" with name "my-webhook", endpoint "https://example.com/webhook" and enabled=true
    Then the "name" attribute should be "my-webhook"
    And the "endpoint" attribute should be "https://example.com/webhook"
    And the "enabled" attribute should be true

  Scenario: Updating a named webhook
    Given a "spacelift_named_webhook" in space "my-space" with name "my-webhook" and endpoint "https://example.com/webhook" exists
    When I update the "spacelift_named_webhook" to have endpoint "https://example.com/new-webhook" and enabled=false
    Then the "endpoint" attribute should be "https://example.com/new-webhook"
    And the "enabled" attribute should be false

  Scenario: Deleting a named webhook
    Given a "spacelift_named_webhook" with name "my-webhook" in space "my-space" exists
    When I delete the "spacelift_named_webhook"
    Then the "spacelift_named_webhook" should not exist
