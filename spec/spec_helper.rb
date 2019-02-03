require "bundler/setup"
require "github_client"
require "active_support/core_ext/hash/indifferent_access"
require "pathname"
require "yaml"

SPEC_DIR    = Pathname.new(File.dirname(__FILE__))
CONFIG_PATH = SPEC_DIR.join("config.yml")
CONFIG      = YAML.load_file(CONFIG_PATH).with_indifferent_access

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
