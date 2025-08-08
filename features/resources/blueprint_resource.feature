Feature: Spacelift Blueprint Resource

  Scenario: Creating a blueprint
    Given the Spacelift provider is configured
    When I create a "spacelift_blueprint" with name "my-blueprint", space "my-space", state "DRAFT" and template "my-template"
    Then the "name" attribute should be "my-blueprint"
    And the "state" attribute should be "DRAFT"
    And the "template" attribute should be "my-template"

  Scenario: Updating a blueprint
    Given a "spacelift_blueprint" with name "my-blueprint" and state "DRAFT" exists
    When I update the "spacelift_blueprint" to have name "my-renamed-blueprint" and state "PUBLISHED"
    Then the "name" attribute should be "my-renamed-blueprint"
    And the "state" attribute should be "PUBLISHED"

  Scenario: Deleting a blueprint
    Given a "spacelift_blueprint" with name "my-blueprint" exists
    When I delete the "spacelift_blueprint"
    Then the "spacelift_blueprint" should not exist
