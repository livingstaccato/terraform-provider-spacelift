Feature: Spacelift Space Resource

  Scenario: Creating a space
    Given the Spacelift provider is configured
    When I create a "spacelift_space" with name "my-space" and description "my space description"
    Then the "name" attribute should be "my-space"
    And the "description" attribute should be "my space description"

  Scenario: Updating a space
    Given a "spacelift_space" with name "my-space" exists
    When I update the "spacelift_space" to have name "my-renamed-space"
    Then the "name" attribute should be "my-renamed-space"

  Scenario: Deleting a space
    Given a "spacelift_space" with name "my-space" exists
    When I delete the "spacelift_space"
    Then the "spacelift_space" should not exist
