Feature: Spacelift Scheduled Run Data Source

  Scenario: Getting a scheduled run by ID
    Given the Spacelift provider is configured
    And a scheduled run with ID "my-stack/my-schedule" exists
    When I query the "spacelift_scheduled_run" data source with ID "my-stack/my-schedule"
    Then the "stack_id" attribute should be "my-stack"
    And the "schedule_id" attribute should be "my-schedule"
    And the "name" attribute should be a non-empty string
