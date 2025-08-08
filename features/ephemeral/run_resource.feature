Feature: Spacelift Run Resource

  Scenario: Triggering a run on a stack
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" exists
    When I create a "spacelift_run" for stack "my-stack" with commit SHA "my-commit-sha"
    Then a new run should be triggered on stack "my-stack" with commit SHA "my-commit-sha"
    And the "id" attribute of the run resource should be the ID of the new run
