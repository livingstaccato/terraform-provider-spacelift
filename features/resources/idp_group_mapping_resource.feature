Feature: Spacelift IdP Group Mapping Resource

  Scenario: Creating an IdP group mapping
    Given the Spacelift provider is configured
    When I create an "spacelift_idp_group_mapping" with name "my-idp-group" and a policy for space "my-space" with role "ADMIN"
    Then the "name" attribute should be "my-idp-group"
    And the "policy" attribute should contain a policy for space "my-space" with role "ADMIN"

  Scenario: Updating an IdP group mapping
    Given an "spacelift_idp_group_mapping" with name "my-idp-group" and a policy for space "my-space" with role "ADMIN" exists
    When I update the "spacelift_idp_group_mapping" to have a policy for space "my-space" with role "READ"
    Then the "policy" attribute should contain a policy for space "my-space" with role "READ"

  Scenario: Deleting an IdP group mapping
    Given an "spacelift_idp_group_mapping" with name "my-idp-group" exists
    When I delete the "spacelift_idp_group_mapping"
    Then the "spacelift_idp_group_mapping" should not exist
