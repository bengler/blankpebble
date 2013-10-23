source 'https://rubygems.org/'

gem 'rake'
gem 'sinatra', '~> 1.3.3'
gem 'sinatra-activerecord', '~> 0.1.3', :require => false
gem 'rack', '~> 1.5'
gem 'rack-contrib', :git => "git://github.com/rack/rack-contrib"
gem 'activerecord', '~> 3.2.2', :require => 'active_record'
gem 'yajl-ruby', '~> 1.1.0', :require => "yajl"
gem 'pebblebed'
gem 'pebbles-cors', :git => 'git@github.com:bengler/pebbles-cors.git'
gem 'petroglyph', '~> 0.0.2'
gem 'nokogiri', '~> 1.5.2'
gem 'excon', '~> 0.16.2'
gem 'norwegian_phone', '~> 0.0.10'
gem 'rest-client', '~> 1.6'
gem 'bcrypt-ruby', :require => 'bcrypt'
gem 'memcache_mock'
gem 'dalli'

group :development do
  gem 'thin'
end

group :development, :test do
  gem 'bengler_test_helper', :git => 'git@github.com:bengler/bengler_test_helper.git', :require => false
end

group :production do
  gem 'airbrake', '~> 3.1.4', :require => false
  gem 'unicorn', '~> 4.3.0'
end

group :test do
  gem 'rspec', '~> 2.8'
  gem 'rack-test'
  gem 'simplecov', :require => false
  gem 'webmock'
  gem 'rack-test'
  gem 'vcr'
end
