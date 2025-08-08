Feature: Spacelift Policy Resource

  Scenario: Creating a policy
    Given the Spacelift provider is configured
    When I create a "spacelift_policy" with name "my-policy", type "PLAN" and body "package spacelift"
    Then the "name" attribute should be "my-policy"
    And the "type" attribute should be "PLAN"
    And the "body" attribute should be "package spacelift"

  Scenario: Updating a policy
    Given a "spacelift_policy" with name "my-policy", type "PLAN" and body "package spacelift" exists
    When I update the "spacelift_policy" to have name "my-renamed-policy" and body "package spacelift.renamed"
    Then the "name" attribute should be "my-renamed-policy"
    And the "body" attribute should be "package spacelift.renamed"

  Scenario: Deleting a policy
    Given a "spacelift_policy" with name "my-policy" exists
    When I delete the "spacelift_policy"
    Then the "spacelift_policy" should not exist
