# encoding: utf-8

require 'spec_helper'
require 'webmock/rspec'

describe "API v1 blank" do
  include Rack::Test::Methods
  include Pebblebed::RSpecHelper

  def app
    Blank::V1
  end

  context "GET /greetings/hello" do
    it "says hello" do
      get "/greetings/hello"
      last_response.status.should eq 200
      JSON.parse(last_response.body)['greeting']['text'].should eq "Hello"
    end
  end


end
