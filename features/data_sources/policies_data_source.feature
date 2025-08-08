Feature: Spacelift Policies Data Source

  Scenario: Getting all policies
    Given the Spacelift provider is configured
    And two policies exist: "policy-1" and "policy-2"
    When I query the "spacelift_policies" data source
    Then the "policies" attribute should be a list of 2 objects

  Scenario: Filtering policies by type
    Given the Spacelift provider is configured
    And a PLAN policy named "plan-policy" exists
    And an ACCESS policy named "access-policy" exists
    When I query the "spacelift_policies" data source with type "PLAN"
    Then the "policies" attribute should be a list of 1 object
    And the first object in the "policies" list should have name "plan-policy"

  Scenario: Filtering policies by labels
    Given the Spacelift provider is configured
    And a policy named "policy-a" with labels ["foo", "bar"] exists
    And a policy named "policy-b" with labels ["foo", "baz"] exists
    When I query the "spacelift_policies" data source with labels ["foo", "bar"]
    Then the "policies" attribute should be a list of 1 object
    And the first object in the "policies" list should have name "policy-a"
