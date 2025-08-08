Feature: Spacelift Provider Configuration

  Scenario: Configuring the provider with an API key
    Given the provider is configured with an API key ID and secret
    When a data source is queried
    Then the provider should authenticate using the API key

  Scenario: Configuring the provider with an API token
    Given the provider is configured with an API token
    When a data source is queried
    Then the provider should authenticate using the API token

  Scenario: Missing API key configuration
    Given the provider is configured with an incomplete API key
    When a data source is queried
    Then the provider should return an error about missing configuration
