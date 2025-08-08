Feature: Spacelift GCP Service Account Resource

  Scenario: Creating a GCP service account for a stack
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" exists
    When I create a "spacelift_gcp_service_account" for stack "my-stack" with scopes ["https://www.googleapis.com/auth/cloud-platform"]
    Then the "service_account_email" attribute should be a non-empty string
    And the "token_scopes" attribute should contain "https://www.googleapis.com/auth/cloud-platform"

  Scenario: Updating a GCP service account for a stack
    Given a "spacelift_gcp_service_account" for stack "my-stack" with scopes ["https://www.googleapis.com/auth/cloud-platform"] exists
    When I update the "spacelift_gcp_service_account" to have scopes ["https://www.googleapis.com/auth/compute"]
    Then the "token_scopes" attribute should contain "https://www.googleapis.com/auth/compute"

  Scenario: Deleting a GCP service account for a stack
    Given a "spacelift_gcp_service_account" for stack "my-stack" exists
    When I delete the "spacelift_gcp_service_account"
    Then the "spacelift_gcp_service_account" should not exist
