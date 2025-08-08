Feature: Spacelift IPs Data Source

  Scenario: Getting the Spacelift IP addresses
    Given the Spacelift provider is configured
    When I query the "spacelift_ips" data source
    Then the "ips" attribute should be a list of IP addresses
    And the "cidrs" attribute should be a list of CIDR blocks
