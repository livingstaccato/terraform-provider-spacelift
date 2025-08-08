Feature: Spacelift Space By Path Data Source

  Scenario: Getting a space by absolute path
    Given the Spacelift provider is configured
    And a space with path "root/my-space" and name "My Space" exists
    When I query the "spacelift_space_by_path" data source with space path "root/my-space"
    Then the "name" attribute should be "My Space"
    And the "parent_space_id" attribute should be "root"

  Scenario: Getting a space by relative path
    Given the Spacelift provider is configured to run within a Spacelift space with ID "root"
    And a space with path "root/my-space" and name "My Space" exists
    When I query the "spacelift_space_by_path" data source with space path "my-space"
    Then the "name" attribute should be "My Space"
    And the "parent_space_id" attribute should be "root"
