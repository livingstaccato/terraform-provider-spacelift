Feature: Spacelift Terraform Provider Resource

  Scenario: Creating a Terraform provider
    Given the Spacelift provider is configured
    When I create a "spacelift_terraform_provider" with type "my-provider" and space_id "my-space"
    Then the "type" attribute should be "my-provider"
    And the "space_id" attribute should be "my-space"

  Scenario: Updating a Terraform provider
    Given a "spacelift_terraform_provider" with type "my-provider" and space_id "my-space" exists
    When I update the "spacelift_terraform_provider" to have description "new description" and public=true
    Then the "description" attribute should be "new description"
    And the "public" attribute should be true

  Scenario: Deleting a Terraform provider
    Given a "spacelift_terraform_provider" with type "my-provider" exists
    When I delete the "spacelift_terraform_provider"
    Then the "spacelift_terraform_provider" should not exist
