Feature: Spacelift Task Resource

  Scenario: Creating a task on a stack
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" exists
    When I create a "spacelift_task" for stack "my-stack" with command "my-command"
    Then a new task should be triggered on stack "my-stack" with command "my-command"
    And the "id" attribute of the task resource should be the ID of the new task run
