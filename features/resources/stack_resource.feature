Feature: Spacelift Stack Resource

  Scenario: Creating a Terraform stack
    Given the Spacelift provider is configured
    When I create a "spacelift_stack" with name "my-stack", repository "my-repo", branch "main" and terraform_version "1.3.0"
    Then the "name" attribute should be "my-stack"
    And the "repository" attribute should be "my-repo"
    And the "branch" attribute should be "main"
    And the "terraform_version" attribute should be "1.3.0"

  Scenario: Updating a Terraform stack
    Given a "spacelift_stack" with name "my-stack" and branch "main" exists
    When I update the "spacelift_stack" to have branch "develop" and description "new description"
    Then the "branch" attribute should be "develop"
    And the "description" attribute should be "new description"

  Scenario: Creating a CloudFormation stack
    Given the Spacelift provider is configured
    When I create a "spacelift_stack" with name "my-cfn-stack", repository "my-repo", branch "main" and a cloudformation block
    Then the "name" attribute should be "my-cfn-stack"
    And the "cloudformation" block should be set correctly

  Scenario: Deleting a stack
    Given a "spacelift_stack" with name "my-stack" exists
    When I delete the "spacelift_stack"
    Then the "spacelift_stack" should not exist
