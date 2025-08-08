Feature: Spacelift Role Actions Data Source

  Scenario: Getting the list of all possible role actions
    Given the Spacelift provider is configured
    When I query the "spacelift_role_actions" data source
    Then the "actions" attribute should be a list of strings
    And the "actions" attribute should contain "SPACE_ADMIN"
    And the "actions" attribute should contain "RUN_CONFIRM"
