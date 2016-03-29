

s2e = {
    kleeArgs = {
    }
}

plugins = {
    -- BaseInstructions handles custom S2E opcodes in the guest code
    "BaseInstructions",
    -- TestOnTranslateBlockEndPlugin prints a message each time the signal is received
    "TestOnTranslateBlockEndPlugin"
}

pluginsConfig = {
    TestOnTranslateBlockEndPlugin = {
    }
}
