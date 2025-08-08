Feature: Spacelift Webhook Data Source

  Scenario: Getting a webhook by ID for a stack
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" has a webhook with ID "my-webhook" and endpoint "https://example.com/webhook"
    When I query the "spacelift_webhook" data source for stack "my-stack" and webhook "my-webhook"
    Then the "endpoint" attribute should be "https://example.com/webhook"
    And the "enabled" attribute should be a boolean

  Scenario: Getting a webhook by ID for a module
    Given the Spacelift provider is configured
    And a module with ID "my-module" has a webhook with ID "my-webhook" and endpoint "https://example.com/webhook"
    When I query the "spacelift_webhook" data source for module "my-module" and webhook "my-webhook"
    Then the "endpoint" attribute should be "https://example.com/webhook"
    And the "enabled" attribute should be a boolean
