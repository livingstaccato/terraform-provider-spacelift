Feature: Spacelift GCP Service Account Data Source

  Scenario: Getting a GCP service account for a module
    Given the Spacelift provider is configured
    And a module with ID "k8s-module" has a GCP service account with email "k8s-module@my-project.iam.gserviceaccount.com"
    When I query the "spacelift_gcp_service_account" data source with module ID "k8s-module"
    Then the "service_account_email" attribute should be "k8s-module@my-project.iam.gserviceaccount.com"
    And the "token_scopes" attribute should contain "https://www.googleapis.com/auth/cloud-platform"

  Scenario: Getting a GCP service account for a stack
    Given the Spacelift provider is configured
    And a stack with ID "k8s-core" has a GCP service account with email "k8s-core@my-project.iam.gserviceaccount.com"
    When I query the "spacelift_gcp_service_account" data source with stack ID "k8s-core"
    Then the "service_account_email" attribute should be "k8s-core@my-project.iam.gserviceaccount.com"
    And the "token_scopes" attribute should contain "https://www.googleapis.com/auth/userinfo.email"
