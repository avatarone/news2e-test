require 'aruba/cucumber'

Before do
    if ENV.key?('S2E_DIR')
        @s2e_dir = ENV['S2E_DIR']
    else
        abort("Environment variable S2E_DIR needs to be set to the S2E build directory (qemu-release or qemu-debug)")
    end
    @dirs = ["."]
    @aruba_timeout_seconds = 30
end
