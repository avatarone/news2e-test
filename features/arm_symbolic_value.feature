Feature: Check that a single symbolic value forks exactly two states for the ARM instruction set

    Background:
        Given current test directory at "tests/arm/symbolic_value"
        Given S2E config file named "s2e_conf.lua"
        Given ARM firmware named "test"
        When S2E test is run for at most 60 seconds


    Scenario: Check output for messages that both states were killed successfully
        Then the stdout should contain "[State 0] Killing state 0"
        And the stdout should contain "message: \"If branch terminated\""
        And the stdout should contain "[State 1] Killing state 1"
        And the stdout should contain "message: \"Else branch terminated\""
        And the stdout should not contain "[State 2]"
