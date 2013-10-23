require 'simplecov'

SimpleCov.add_filter 'spec'
SimpleCov.add_filter 'config'
SimpleCov.start

$:.unshift(File.dirname(File.dirname(__FILE__)))

ENV['RACK_ENV'] = 'test'
require 'config/environment'

require 'api/v1'

require 'rack/test'
require 'pebblebed/rspec_helper'
require 'webmock'

set :environment, :test

# Run all examples in a transaction
RSpec.configure do |c|
  c.around(:each) do |example|
    clear_cookies if respond_to?(:clear_cookies)
    $memcached = MemcacheMock.new
    Pebblebed.memcached = $memcached
# Uncomment if ActiveRecord is enabled
#    ActiveRecord::Base.connection.transaction do
     example.run
#      raise ActiveRecord::Rollback
#    end
  end
end
