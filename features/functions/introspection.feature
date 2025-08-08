Feature: GraphQL Schema Introspection

  Scenario: Getting the possible values for an enum
    Given the Spacelift GraphQL client is configured
    When the introspection client queries for the values of the "PolicyType" enum
    Then the client should return a list of strings containing all valid policy types
    And the list should include "ACCESS" and "PLAN"

  Scenario: Querying for a non-existent enum
    Given the Spacelift GraphQL client is configured
    When the introspection client queries for the values of a non-existent enum "NonExistentEnum"
    Then the client should return an error indicating that the enum type was not found
