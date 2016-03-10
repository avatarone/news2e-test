Feature: Check that the BaseInstructions kill opcode is working for the ARM instruction set

    Background:
        Given current test directory at "tests/arm/base_instructions_kill"
        Given S2E config file named "s2e_conf.lua"
        Given ARM firmware named "test"
        When S2E test is run for at most 60 seconds


    Scenario: Check output for messages that the state was killed successfully
        Then the stdout should contain "[State 0] Killing state 0"
        And the stdout should contain "[State 0] State was terminated by opcode"
        And the stdout should contain "message: \"State killed OK\""
