Feature: Spacelift Scheduled Delete Stack Resource

  Scenario: Creating a scheduled stack deletion
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" exists
    When I create a "spacelift_scheduled_delete_stack" for stack "my-stack" at timestamp 1672531199 with delete_resources=true
    Then the "at" attribute should be 1672531199
    And the "delete_resources" attribute should be true

  Scenario: Updating a scheduled stack deletion
    Given a "spacelift_scheduled_delete_stack" for stack "my-stack" at timestamp 1672531199 exists
    When I update the "spacelift_scheduled_delete_stack" to have timestamp 1672531200 and delete_resources=false
    Then the "at" attribute should be 1672531200
    And the "delete_resources" attribute should be false

  Scenario: Deleting a scheduled stack deletion
    Given a "spacelift_scheduled_delete_stack" for stack "my-stack" exists
    When I delete the "spacelift_scheduled_delete_stack"
    Then the "spacelift_scheduled_delete_stack" should not exist
