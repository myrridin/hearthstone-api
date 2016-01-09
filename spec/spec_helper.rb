$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'hearthstone_api'
require 'webmock/rspec'
require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = 'spec/vcr_cassettes'
  config.hook_into :webmock
  config.configure_rspec_metadata!

  unless ENV['HEARTHSTONE_API_KEY'].nil? || ENV['HEARTHSTONE_API_KEY'].empty?
    config.filter_sensitive_data('<REAL MASHAPE KEY GOES HERE>') { ENV['HEARTHSTONE_API_KEY'] }
  end
end

RSpec.configure do |config|
  config.default_formatter = 'progress'
end
