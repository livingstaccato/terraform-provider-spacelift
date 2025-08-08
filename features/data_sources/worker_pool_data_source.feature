Feature: Spacelift Worker Pool Data Source

  Scenario: Getting a worker pool by ID
    Given the Spacelift provider is configured
    And a worker pool with ID "my-worker-pool" and name "My Worker Pool" exists
    When I query the "spacelift_worker_pool" data source with worker_pool_id "my-worker-pool"
    Then the "name" attribute should be "My Worker Pool"
    And the "description" attribute should be a string
    And the "config" attribute should be a non-empty string
