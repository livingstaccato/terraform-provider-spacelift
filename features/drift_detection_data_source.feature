Feature: Spacelift Drift Detection Data Source

  Scenario: Getting drift detection settings for a stack
    Given the Spacelift provider is configured
    And a stack with ID "core-infra-production" has drift detection configured with schedule "0 0 * * *" and timezone "UTC"
    When I query the "spacelift_drift_detection" data source with the stack ID "core-infra-production"
    Then the "reconcile" attribute should be false
    And the "schedule" attribute should be a list containing "0 0 * * *"
    And the "timezone" attribute should be "UTC"
