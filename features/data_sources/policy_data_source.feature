Feature: Spacelift Policy Data Source

  Scenario: Getting a policy by ID
    Given the Spacelift provider is configured
    And a policy with ID "my-policy" and name "My Policy" exists
    When I query the "spacelift_policy" data source with policy ID "my-policy"
    Then the "name" attribute should be "My Policy"
    And the "type" attribute should be a non-empty string
    And the "body" attribute should be a non-empty string
