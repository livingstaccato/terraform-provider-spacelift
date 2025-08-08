Feature: Spacelift VCS Agent Pool Resource

  Scenario: Creating a VCS agent pool
    Given the Spacelift provider is configured
    When I create a "spacelift_vcs_agent_pool" with name "my-vcs-agent-pool" and description "my description"
    Then the "name" attribute should be "my-vcs-agent-pool"
    And the "description" attribute should be "my description"
    And the "config" attribute should be a non-empty string

  Scenario: Updating a VCS agent pool
    Given a "spacelift_vcs_agent_pool" with name "my-vcs-agent-pool" exists
    When I update the "spacelift_vcs_agent_pool" to have name "my-renamed-vcs-agent-pool"
    Then the "name" attribute should be "my-renamed-vcs-agent-pool"

  Scenario: Deleting a VCS agent pool
    Given a "spacelift_vcs_agent_pool" with name "my-vcs-agent-pool" exists
    When I delete the "spacelift_vcs_agent_pool"
    Then the "spacelift_vcs_agent_pool" should not exist
