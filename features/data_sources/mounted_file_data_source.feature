Feature: Spacelift Mounted File Data Source

  Scenario: Getting a mounted file from a stack
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" has a mounted file at "my-file.txt" with content "bXktY29udGVudA=="
    When I query the "spacelift_mounted_file" data source for stack "my-stack" and path "my-file.txt"
    Then the "content" attribute should be "bXktY29udGVudA=="
    And the "checksum" attribute should be the SHA256 of the original content
