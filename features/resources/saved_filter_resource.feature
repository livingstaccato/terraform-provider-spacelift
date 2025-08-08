Feature: Spacelift Saved Filter Resource

  Scenario: Creating a saved filter
    Given the Spacelift provider is configured
    When I create a "spacelift_saved_filter" with name "my-filter", type "stacks" and data "{}"
    Then the "name" attribute should be "my-filter"
    And the "type" attribute should be "stacks"
    And the "data" attribute should be "{}"

  Scenario: Updating a saved filter
    Given a "spacelift_saved_filter" with name "my-filter", type "stacks" and data "{}" exists
    When I update the "spacelift_saved_filter" to have name "my-renamed-filter" and data "{\"key\":\"value\"}"
    Then the "name" attribute should be "my-renamed-filter"
    And the "data" attribute should be "{\"key\":\"value\"}"

  Scenario: Deleting a saved filter
    Given a "spacelift_saved_filter" with name "my-filter" exists
    When I delete the "spacelift_saved_filter"
    Then the "spacelift_saved_filter" should not exist
