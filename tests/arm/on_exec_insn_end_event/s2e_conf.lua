

s2e = {
    kleeArgs = {
    }
}

plugins = {
    -- BaseInstructions handles custom S2E opcodes in the guest code
    "BaseInstructions",
    -- TestOnExecuteInstructionEndPlugin prints a message each time the signal is received
    "TestOnExecuteInstructionEndPlugin"
}

pluginsConfig = {
    TestOnExecuteInstructionEndPlugin = {
    }
}
