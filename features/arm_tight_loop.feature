Feature: Execute single ARM instruction in concrete mode

    Background:
        Given current test directory at "tests/arm/tight_loop"
        Given S2E config file named "s2e_conf.lua"
        Given ARM firmware named "test"
        When S2E test is run


    Scenario: Check exit status
        Then the stdout should contain "status: 0x1"

