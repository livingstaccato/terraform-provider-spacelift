Feature: Spacelift GraphQL Client

  Scenario: A successful GraphQL query
    Given the Spacelift GraphQL client is configured
    When a valid GraphQL query is executed
    Then the client should return the requested data without errors
    And the request should include the 'Authorization' and 'Spacelift-GraphQL-Query' headers

  Scenario: A successful GraphQL mutation
    Given the Spacelift GraphQL client is configured
    When a valid GraphQL mutation is executed
    Then the client should return the result of the mutation without errors
    And the request should include the 'Authorization' and 'Spacelift-GraphQL-Mutation' headers

  Scenario: A GraphQL query for a non-existent resource
    Given the Spacelift GraphQL client is configured
    When a GraphQL query for a resource that does not exist is executed
    Then the client should return a 'not found' error

  Scenario: Rate limiting
    Given the Spacelift GraphQL client is configured with a rate limit
    When multiple requests are made in quick succession
    Then the client should delay requests to stay within the rate limit
