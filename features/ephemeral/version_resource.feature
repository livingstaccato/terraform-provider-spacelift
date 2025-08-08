Feature: Spacelift Version Resource

  Scenario: Creating a module version
    Given the Spacelift provider is configured
    And a module with ID "my-module" exists
    When I create a "spacelift_version" for module "my-module" with commit SHA "my-commit-sha" and version "1.2.3"
    Then a new version "1.2.3" should be created for module "my-module" at commit "my-commit-sha"
    And the "id" attribute of the version resource should be the ID of the new version
