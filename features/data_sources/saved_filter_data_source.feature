Feature: Spacelift Saved Filter Data Source

  Scenario: Getting a saved filter by ID
    Given the Spacelift provider is configured
    And a saved filter with ID "my-filter" and name "My Filter" exists
    When I query the "spacelift_saved_filter" data source with filter ID "my-filter"
    Then the "name" attribute should be "My Filter"
    And the "type" attribute should be a non-empty string
    And the "data" attribute should be a non-empty JSON string
