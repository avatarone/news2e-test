

s2e = {
    kleeArgs = {
        "-use-concolic-execution=false",
    }
}

plugins = {
    -- BaseInstructions handles custom S2E opcodes in the guest code
    "BaseInstructions"
}

pluginsConfig = {
    BaseInstructions = {
    }
}
