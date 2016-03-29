Feature: Check that the OnTranslateInstructionStart signal is fired

    Background:
        Given current test directory at "tests/arm/on_insn_start_event"
        Given S2E config file named "s2e_conf.lua"
        Given ARM firmware named "test"
        When S2E test is run for at most 60 seconds


    Scenario: Check output for messages that the OnTranslateInstructionStart signal was fired
        Then the stderr should contain "OnTranslateInstructionStart called at pc "
