require "vcr"

VCR.configure do |config|
  config.cassette_library_dir = "fixtures/vcr_cassettes"
  config.hook_into :webmock

  config.configure_rspec_metadata!

  CONFIG.each do |key, value|
    config.filter_sensitive_data("[#{key}]") { value }
  end
end
