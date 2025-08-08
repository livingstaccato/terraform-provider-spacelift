Feature: Spacelift Worker Pools Data Source

  Scenario: Getting all worker pools
    Given the Spacelift provider is configured
    And two worker pools exist: "pool-1" and "pool-2"
    When I query the "spacelift_worker_pools" data source
    Then the "worker_pools" attribute should be a list of at least 2 objects
    And each object in the "worker_pools" list should have a non-empty "worker_pool_id"
    And each object in the "worker_pools" list should have a non-empty "name"
