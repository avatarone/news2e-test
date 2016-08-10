Feature: When running in symbolic (KLEE) mode, check that an invalid instruction
         is correctly handled.

    Background:
        Given current test directory at "tests/arm/invalid_instruction"
        Given S2E config file named "s2e_conf.lua"
        Given ARM firmware named "test"
        Given extra command line arguments "-execute-always-klee"
        When S2E test is run for at most 60 seconds


    Scenario: Check output that S2E was indeed running, always executing TBs in KLEE,
              and that the invalid instruction handler is correctly invoked.
        Then the stdout should contain "Caught undefined instruction"
