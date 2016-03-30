Feature: Check that the OnExecuteBlockEnd signal is fired

    Background:
        Given current test directory at "tests/arm/on_exec_tb_end_event"
        Given S2E config file named "s2e_conf.lua"
        Given ARM firmware named "test"
        When S2E test is run for at most 60 seconds


    Scenario: Check output for messages that the OnExecuteBlockEnd signal was fired
        Then the stderr should contain "OnExecuteBlockEnd called at pc "
