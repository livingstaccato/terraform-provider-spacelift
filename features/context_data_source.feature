Feature: Spacelift Context Data Source

  Scenario: Getting a context by ID
    Given the Spacelift provider is configured
    And a context with ID "prod-k8s-ie", name "Prod K8s IE" and description "Production Kubernetes cluster in Ireland" exists
    When I query the "spacelift_context" data source with the context ID "prod-k8s-ie"
    Then the "name" attribute should be "Prod K8s IE"
    And the "description" attribute should be "Production Kubernetes cluster in Ireland"
    And the "labels" attribute should contain "env:prod" and "region:ie"
