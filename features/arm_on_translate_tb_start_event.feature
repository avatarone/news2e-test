Feature: Check that the OnTranslateBlockStart signal is fired

    Background:
        Given current test directory at "tests/arm/on_translate_tb_start_event"
        Given S2E config file named "s2e_conf.lua"
        Given ARM firmware named "test"
        When S2E test is run for at most 60 seconds


    Scenario: Check output for messages that the OnTranslateBlockStart signal was fired
        Then the stderr should contain "OnTranslateBlockStart called at pc "
