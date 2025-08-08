Feature: Spacelift Role Attachment Resource

  Scenario: Attaching a role to an API key
    Given the Spacelift provider is configured
    And a role with ID "my-role" exists
    And an API key with ID "my-api-key" exists
    And a space with ID "my-space" exists
    When I create a "spacelift_role_attachment" for role "my-role", API key "my-api-key" and space "my-space"
    Then the "role_id" attribute should be "my-role"
    And the "api_key_id" attribute should be "my-api-key"
    And the "space_id" attribute should be "my-space"

  Scenario: Attaching a role to an IdP group
    Given the Spacelift provider is configured
    And a role with ID "my-role" exists
    And an IdP group with ID "my-idp-group" exists
    And a space with ID "my-space" exists
    When I create a "spacelift_role_attachment" for role "my-role", IdP group "my-idp-group" and space "my-space"
    Then the "role_id" attribute should be "my-role"
    And the "idp_group_mapping_id" attribute should be "my-idp-group"
    And the "space_id" attribute should be "my-space"

  Scenario: Attaching a role to a user
    Given the Spacelift provider is configured
    And a role with ID "my-role" exists
    And a user with ID "my-user" exists
    And a space with ID "my-space" exists
    When I create a "spacelift_role_attachment" for role "my-role", user "my-user" and space "my-space"
    Then the "role_id" attribute should be "my-role"
    And the "user_id" attribute should be "my-user"
    And the "space_id" attribute should be "my-space"

  Scenario: Deleting a role attachment
    Given a "spacelift_role_attachment" for role "my-role" and API key "my-api-key" in space "my-space" exists
    When I delete the "spacelift_role_attachment"
    Then the "spacelift_role_attachment" should not exist
