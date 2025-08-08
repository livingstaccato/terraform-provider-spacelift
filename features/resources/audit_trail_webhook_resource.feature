Feature: Spacelift Audit Trail Webhook Resource

  Scenario: Creating an audit trail webhook
    Given the Spacelift provider is configured
    When I create an "spacelift_audit_trail_webhook" with endpoint "https://example.com/webhook", enabled=true and secret "mysecret"
    Then the "endpoint" attribute should be "https://example.com/webhook"
    And the "enabled" attribute should be true

  Scenario: Updating an audit trail webhook
    Given an "spacelift_audit_trail_webhook" with endpoint "https://example.com/webhook" and enabled=true exists
    When I update the "spacelift_audit_trail_webhook" to have endpoint "https://example.com/new-webhook" and enabled=false
    Then the "endpoint" attribute should be "https://example.com/new-webhook"
    And the "enabled" attribute should be false

  Scenario: Deleting an audit trail webhook
    Given an "spacelift_audit_trail_webhook" with endpoint "https://example.com/webhook" exists
    When I delete the "spacelift_audit_trail_webhook"
    Then the "spacelift_audit_trail_webhook" should not exist
