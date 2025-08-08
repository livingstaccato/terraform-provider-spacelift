Feature: Spacelift VCS Agent Pool Data Source

  Scenario: Getting a VCS agent pool by ID
    Given the Spacelift provider is configured
    And a VCS agent pool with ID "my-vcs-agent-pool" and name "My VCS Agent Pool" exists
    When I query the "spacelift_vcs_agent_pool" data source with vcs_agent_pool_id "my-vcs-agent-pool"
    Then the "name" attribute should be "My VCS Agent Pool"
    And the "description" attribute should be a string
