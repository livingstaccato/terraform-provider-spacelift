Feature: Spacelift Contexts Data Source

  Scenario: Getting a list of all contexts
    Given the Spacelift provider is configured
    And two contexts exist: "prod-k8s-ie" and "dev-k8s-ie"
    When I query the "spacelift_contexts" data source
    Then the "contexts" attribute should be a list of 2 objects
    And the first object in the "contexts" list should have name "prod-k8s-ie"
    And the second object in the "contexts" list should have name "dev-k8s-ie"

  Scenario: Filtering contexts by labels
    Given the Spacelift provider is configured
    And a context "prod-k8s-ie" has labels ["env:prod", "region:ie"]
    And a context "dev-k8s-us" has labels ["env:dev", "region:us"]
    When I query the "spacelift_contexts" data source with labels ["env:prod"]
    Then the "contexts" attribute should be a list of 1 object
    And the first object in the "contexts" list should have name "prod-k8s-ie"
