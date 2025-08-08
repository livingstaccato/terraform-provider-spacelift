Feature: Validation Functions

  Scenario: Disallowing an empty string
    Given a required string attribute in a resource
    When the attribute is set to an empty string ""
    Then the provider should return a validation error stating that the attribute must not be an empty string

  Scenario: Allowing a non-empty string
    Given a required string attribute in a resource
    When the attribute is set to a non-empty string "hello"
    Then the provider should not return a validation error for that attribute
