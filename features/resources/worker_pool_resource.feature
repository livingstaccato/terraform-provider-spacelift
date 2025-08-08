Feature: Spacelift Worker Pool Resource

  Scenario: Creating a worker pool
    Given the Spacelift provider is configured
    When I create a "spacelift_worker_pool" with name "my-worker-pool" and description "my description"
    Then the "name" attribute should be "my-worker-pool"
    And the "description" attribute should be "my description"
    And the "config" attribute should be a non-empty string

  Scenario: Updating a worker pool
    Given a "spacelift_worker_pool" with name "my-worker-pool" exists
    When I update the "spacelift_worker_pool" to have name "my-renamed-worker-pool"
    Then the "name" attribute should be "my-renamed-worker-pool"

  Scenario: Deleting a worker pool
    Given a "spacelift_worker_pool" with name "my-worker-pool" exists
    When I delete the "spacelift_worker_pool"
    Then the "spacelift_worker_pool" should not exist
