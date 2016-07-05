

s2e = {
    kleeArgs = {
        "-use-concolic-execution=false",
        "-print-llvm-instructions"
    }
}

plugins = {
    -- BaseInstructions handles custom S2E opcodes in the guest code
    "BaseInstructions",
    "InstructionPrinter"
}

pluginsConfig = {
    BaseInstructions = {
    }
}
