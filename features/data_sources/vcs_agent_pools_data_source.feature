Feature: Spacelift VCS Agent Pools Data Source

  Scenario: Getting all VCS agent pools
    Given the Spacelift provider is configured
    And two VCS agent pools exist: "pool-1" and "pool-2"
    When I query the "spacelift_vcs_agent_pools" data source
    Then the "vcs_agent_pools" attribute should be a list of at least 2 objects
    And each object in the "vcs_agent_pools" list should have a non-empty "vcs_agent_pool_id"
    And each object in the "vcs_agent_pools" list should have a non-empty "name"
