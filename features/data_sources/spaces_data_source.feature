Feature: Spacelift Spaces Data Source

  Scenario: Getting all spaces
    Given the Spacelift provider is configured
    And two spaces exist: "space-1" and "space-2"
    When I query the "spacelift_spaces" data source
    Then the "spaces" attribute should be a list of at least 2 objects
    And each object in the "spaces" list should have a non-empty "space_id"
    And each object in the "spaces" list should have a non-empty "name"
