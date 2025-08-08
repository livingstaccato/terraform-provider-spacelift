Feature: Spacelift Account Data Source

  Scenario: Retrieving account details
    Given the Spacelift provider is configured for an account named "My Spacelift Account"
    When I query the "spacelift_account" data source
    Then the "name" attribute should be "My Spacelift Account"
    And the "tier" attribute should be "free"
    And the "aws_account_id" attribute should be "123456789012"
