Feature: Spacelift AWS Integrations Data Source

  Scenario: Getting a list of all AWS integrations
    Given the Spacelift provider is configured
    And two AWS integrations exist: "prod" and "dev"
    When I query the "spacelift_aws_integrations" data source
    Then the "integrations" attribute should be a list of 2 objects
    And the first object in the "integrations" list should have name "prod" and role ARN "arn:aws:iam::123456789012:role/SpaceliftRole-Prod"
    And the second object in the "integrations" list should have name "dev" and role ARN "arn:aws:iam::123456789012:role/SpaceliftRole-Dev"
