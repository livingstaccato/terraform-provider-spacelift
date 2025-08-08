Feature: Spacelift Scheduled Run Resource

  Scenario: Creating a scheduled run for a stack with a cron schedule
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" exists
    When I create a "spacelift_scheduled_run" for stack "my-stack" with cron "0 * * * *" and timezone "UTC"
    Then the "every" attribute should contain "0 * * * *"
    And the "timezone" attribute should be "UTC"

  Scenario: Creating a scheduled run for a stack at a specific time
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" exists
    When I create a "spacelift_scheduled_run" for stack "my-stack" at timestamp 1672531199
    Then the "at" attribute should be 1672531199

  Scenario: Updating a scheduled run
    Given a "spacelift_scheduled_run" for stack "my-stack" with cron "0 * * * *" exists
    When I update the "spacelift_scheduled_run" to have cron "0 0 * * *"
    Then the "every" attribute should contain "0 0 * * *"

  Scenario: Deleting a scheduled run
    Given a "spacelift_scheduled_run" for stack "my-stack" exists
    When I delete the "spacelift_scheduled_run"
    Then the "spacelift_scheduled_run" should not exist
