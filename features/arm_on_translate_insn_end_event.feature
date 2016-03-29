Feature: Check that the OnTranslateInstructionEnd signal is fired

    Background:
        Given current test directory at "tests/arm/on_insn_end_event"
        Given S2E config file named "s2e_conf.lua"
        Given ARM firmware named "test"
        When S2E test is run for at most 60 seconds


    Scenario: Check output for messages that the OnTranslateInstructionEnd signal was fired
        Then the stderr should contain "OnTranslateInstructionEnd called at pc "
