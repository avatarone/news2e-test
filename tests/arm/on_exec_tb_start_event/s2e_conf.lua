

s2e = {
    kleeArgs = {
    }
}

plugins = {
    -- BaseInstructions handles custom S2E opcodes in the guest code
    "BaseInstructions",
    -- TestOnExecuteBlockStartPlugin prints a message each time the signal is received
    "TestOnExecuteBlockStartPlugin"
}

pluginsConfig = {
    TestOnExecuteBlockStartPlugin = {
    }
}
