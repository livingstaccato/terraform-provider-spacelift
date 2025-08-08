Feature: Spacelift Policy Attachment Resource

  Scenario: Creating a policy attachment for a stack
    Given the Spacelift provider is configured
    And a policy with ID "my-policy" exists
    And a stack with ID "my-stack" exists
    When I create a "spacelift_policy_attachment" for policy "my-policy" and stack "my-stack"
    Then the "policy_id" attribute should be "my-policy"
    And the "stack_id" attribute should be "my-stack"

  Scenario: Deleting a policy attachment
    Given a "spacelift_policy_attachment" for policy "my-policy" and stack "my-stack" exists
    When I delete the "spacelift_policy_attachment"
    Then the "spacelift_policy_attachment" should not exist
