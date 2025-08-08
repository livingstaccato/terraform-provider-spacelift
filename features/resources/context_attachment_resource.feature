Feature: Spacelift Context Attachment Resource

  Scenario: Creating a context attachment for a stack
    Given the Spacelift provider is configured
    And a context with ID "my-context" exists
    And a stack with ID "my-stack" exists
    When I create a "spacelift_context_attachment" for context "my-context" and stack "my-stack" with priority 10
    Then the "priority" attribute should be 10

  Scenario: Deleting a context attachment
    Given a "spacelift_context_attachment" for context "my-context" and stack "my-stack" exists
    When I delete the "spacelift_context_attachment"
    Then the "spacelift_context_attachment" should not exist
