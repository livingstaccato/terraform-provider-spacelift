Feature: Spacelift Context Resource

  Scenario: Creating a context
    Given the Spacelift provider is configured
    When I create a "spacelift_context" with name "my-context" and description "my context description"
    Then the "name" attribute should be "my-context"
    And the "description" attribute should be "my context description"

  Scenario: Updating a context
    Given a "spacelift_context" with name "my-context" and description "my context description" exists
    When I update the "spacelift_context" to have name "my-renamed-context"
    Then the "name" attribute should be "my-renamed-context"

  Scenario: Deleting a context
    Given a "spacelift_context" with name "my-context" exists
    When I delete the "spacelift_context"
    Then the "spacelift_context" should not exist
