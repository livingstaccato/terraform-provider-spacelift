Feature: Spacelift Context Attachment Data Source

  Scenario: Getting a context attachment for a stack
    Given the Spacelift provider is configured
    And a context with ID "prod-k8s-ie" is attached to a stack with ID "apps-cluster" with priority 10
    When I query the "spacelift_context_attachment" data source with context ID "prod-k8s-ie" and stack ID "apps-cluster"
    Then the "priority" attribute should be 10

  Scenario: Getting a context attachment for a module
    Given the Spacelift provider is configured
    And a context with ID "prod-k8s-ie" is attached to a module with ID "terraform-aws-kafka" with priority 20
    When I query the "spacelift_context_attachment" data source with context ID "prod-k8s-ie" and module ID "terraform-aws-kafka"
    Then the "priority" attribute should be 20
