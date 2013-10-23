require File.expand_path('config/site.rb') if File.exists?('config/site.rb')

require "bundler"
Bundler.require

require 'rack/contrib'
require 'pebblebed/sinatra'
require 'sinatra/petroglyph'
require 'logger'

ENV['RACK_ENV'] ||= "development"
environment = ENV['RACK_ENV']

$app_config = YAML::load(File.open("config/app.yml"))[environment]

Pebblebed.config do
  service :checkpoint
  service :sherlock
end

unless defined?(LOGGER)
  LOGGER = Logger.new($stdout)
  LOGGER.level = Logger::INFO
end

%w(
  lib/blank/**/*.rb
  api/*.rb
  api/v1/*.rb
).each do |spec|
  Dir.glob(File.expand_path("../../#{spec}", __FILE__)).each do |f|
    require f
  end
end