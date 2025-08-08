Feature: Spacelift Scheduled Task Data Source

  Scenario: Getting a scheduled task by ID
    Given the Spacelift provider is configured
    And a scheduled task with ID "my-stack/my-schedule" exists
    When I query the "spacelift_scheduled_task" data source with ID "my-stack/my-schedule"
    Then the "stack_id" attribute should be "my-stack"
    And the "schedule_id" attribute should be "my-schedule"
    And the "command" attribute should be a non-empty string
