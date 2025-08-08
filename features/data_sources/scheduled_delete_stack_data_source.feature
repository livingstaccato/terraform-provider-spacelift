Feature: Spacelift Scheduled Delete Stack Data Source

  Scenario: Getting a scheduled stack deletion by ID
    Given the Spacelift provider is configured
    And a scheduled stack deletion with ID "my-stack/my-schedule" exists
    When I query the "spacelift_scheduled_delete_stack" data source with ID "my-stack/my-schedule"
    Then the "stack_id" attribute should be "my-stack"
    And the "schedule_id" attribute should be "my-schedule"
    And the "at" attribute should be a positive integer
    And the "delete_resources" attribute should be a boolean
