Feature: Spacelift Mounted File Resource

  Scenario: Creating a mounted file for a stack
    Given the Spacelift provider is configured
    And a stack with ID "my-stack" exists
    When I create a "spacelift_mounted_file" for stack "my-stack" with relative path "my-file.txt" and content "bXktY29udGVudA=="
    Then the "relative_path" attribute should be "my-file.txt"
    And the "content" attribute should have a SHA256 checksum that matches the original content

  Scenario: Deleting a mounted file from a stack
    Given a "spacelift_mounted_file" for stack "my-stack" with relative path "my-file.txt" exists
    When I delete the "spacelift_mounted_file"
    Then the "spacelift_mounted_file" should not exist
