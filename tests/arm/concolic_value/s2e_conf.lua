

s2e = {
    kleeArgs = {
        "-use-concolic-execution=true",
        --"-print-llvm-instructions"
    }
}

plugins = {
    -- BaseInstructions handles custom S2E opcodes in the guest code
    "BaseInstructions",
--    "InstructionPrinter"
    "ExecutionTracer",
    "TestCaseGenerator",
}

pluginsConfig = {
    BaseInstructions = {
    }
}
