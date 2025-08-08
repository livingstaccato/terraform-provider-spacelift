Feature: Spacelift Saved Filters Data Source

  Scenario: Getting all saved filters
    Given the Spacelift provider is configured
    And two saved filters exist: "filter-1" and "filter-2"
    When I query the "spacelift_saved_filters" data source
    Then the "filters" attribute should be a list of 2 objects

  Scenario: Filtering saved filters by type
    Given the Spacelift provider is configured
    And a saved filter named "stacks-filter" of type "stacks" exists
    And a saved filter named "webhooks-filter" of type "webhooks" exists
    When I query the "spacelift_saved_filters" data source with type "stacks"
    Then the "filters" attribute should be a list of 1 object
    And the first object in the "filters" list should have name "stacks-filter"

  Scenario: Filtering saved filters by name
    Given the Spacelift provider is configured
    And a saved filter named "my-filter" exists
    And a saved filter named "another-filter" exists
    When I query the "spacelift_saved_filters" data source with name "my-filter"
    Then the "filters" attribute should be a list of 1 object
    And the first object in the "filters" list should have name "my-filter"
