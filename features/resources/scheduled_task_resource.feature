Feature: Spacelift Scheduled Task Resource

  Scenario: Creating a scheduled task for a stack with a cron schedule
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" exists
    When I create a "spacelift_scheduled_task" for stack "my-stack" with command "my-command" and cron "0 * * * *"
    Then the "command" attribute should be "my-command"
    And the "every" attribute should contain "0 * * * *"

  Scenario: Creating a scheduled task for a stack at a specific time
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" exists
    When I create a "spacelift_scheduled_task" for stack "my-stack" with command "my-command" at timestamp 1672531199
    Then the "command" attribute should be "my-command"
    And the "at" attribute should be 1672531199

  Scenario: Updating a scheduled task
    Given a "spacelift_scheduled_task" for stack "my-stack" with command "my-command" and cron "0 * * * *" exists
    When I update the "spacelift_scheduled_task" to have command "my-new-command" and cron "0 0 * * *"
    Then the "command" attribute should be "my-new-command"
    And the "every" attribute should contain "0 0 * * *"

  Scenario: Deleting a scheduled task
    Given a "spacelift_scheduled_task" for stack "my-stack" exists
    When I delete the "spacelift_scheduled_task"
    Then the "spacelift_scheduled_task" should not exist
