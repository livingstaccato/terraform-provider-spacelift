Feature: Spacelift Drift Detection Resource

  Scenario: Creating a drift detection configuration for a stack
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" exists
    When I create a "spacelift_drift_detection" for stack "my-stack" with schedule "0 * * * *" and reconcile=true
    Then the "schedule" attribute should contain "0 * * * *"
    And the "reconcile" attribute should be true

  Scenario: Updating a drift detection configuration
    Given a "spacelift_drift_detection" for stack "my-stack" with schedule "0 * * * *" and reconcile=true exists
    When I update the "spacelift_drift_detection" to have schedule "0 0 * * *" and reconcile=false
    Then the "schedule" attribute should contain "0 0 * * *"
    And the "reconcile" attribute should be false

  Scenario: Deleting a drift detection configuration
    Given a "spacelift_drift_detection" for stack "my-stack" exists
    When I delete the "spacelift_drift_detection"
    Then the "spacelift_drift_detection" should not exist
