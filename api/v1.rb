# encoding: utf-8

module BlankPebble

  class V1 < Sinatra::Base

    configure do |config|
      config.set :logging, true
      config.set :logger, LOGGER
      config.set :root, File.expand_path('../v1', __FILE__)
    end

    register Sinatra::Pebblebed

    before do
      cache_control :private, :no_store, :must_revalidate
    end

  end
end