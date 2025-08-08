Feature: Spacelift Named Webhook Secret Header Resource

  Scenario: Creating a named webhook secret header
    Given the Spacelift provider is configured
    And a named webhook with ID "my-webhook" exists
    When I create a "spacelift_named_webhook_secret_header" for webhook "my-webhook" with key "my-key" and value "my-value"
    Then the "key" attribute should be "my-key"

  Scenario: Deleting a named webhook secret header
    Given a "spacelift_named_webhook_secret_header" for webhook "my-webhook" with key "my-key" exists
    When I delete the "spacelift_named_webhook_secret_header"
    Then the "spacelift_named_webhook_secret_header" should not exist
