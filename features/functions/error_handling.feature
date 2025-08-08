Feature: Spacelift Error Handling

  Scenario: Handling a generic GraphQL error
    Given the Spacelift API returns a standard GraphQL error
    When the error is processed by the provider
    Then the provider should output a clean error message containing the GraphQL error details

  Scenario: Handling an 'unauthorized' error
    Given the Spacelift API returns an 'unauthorized' error
    When the error is processed by the provider
    Then the provider should output a helpful error message suggesting a problem with administrative privileges or space ID

  Scenario: Handling a non-GraphQL error
    Given a network error occurs when communicating with the Spacelift API
    When the error is processed by the provider
    Then the provider should output the original network error
