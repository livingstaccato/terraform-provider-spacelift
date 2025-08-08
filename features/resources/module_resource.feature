Feature: Spacelift Module Resource

  Scenario: Creating a module
    Given the Spacelift provider is configured
    When I create a "spacelift_module" with name "my-module", repository "my-repo" and branch "main"
    Then the "name" attribute should be "my-module"
    And the "repository" attribute should be "my-repo"
    And the "branch" attribute should be "main"

  Scenario: Updating a module
    Given a "spacelift_module" with name "my-module", repository "my-repo" and branch "main" exists
    When I update the "spacelift_module" to have branch "develop" and description "new description"
    Then the "branch" attribute should be "develop"
    And the "description" attribute should be "new description"

  Scenario: Deleting a module
    Given a "spacelift_module" with name "my-module" exists
    When I delete the "spacelift_module"
    Then the "spacelift_module" should not exist
