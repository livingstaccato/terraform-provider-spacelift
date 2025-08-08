Feature: Spacelift AWS Integration Data Source

  Scenario: Looking up an AWS integration by ID
    Given the Spacelift provider is configured
    And an AWS integration with ID "01FPAH5J0JFYSM5953T9KT2VS9" and role ARN "arn:aws:iam::123456789012:role/SpaceliftRole" exists
    When I query the "spacelift_aws_integration" data source with the integration ID
    Then the "role_arn" attribute should be "arn:aws:iam::123456789012:role/SpaceliftRole"
    And the "duration_seconds" attribute should be 3600
    And the "generate_credentials_in_worker" attribute should be false

  Scenario: Looking up an AWS integration by name
    Given the Spacelift provider is configured
    And an AWS integration with name "Production" and role ARN "arn:aws:iam::123456789012:role/SpaceliftRole-Prod" exists
    When I query the "spacelift_aws_integration" data source with the integration name
    Then the "role_arn" attribute should be "arn:aws:iam::123456789012:role/SpaceliftRole-Prod"
    And the "duration_seconds" attribute should be 7200
    And the "generate_credentials_in_worker" attribute should be true
