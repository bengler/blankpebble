module Blank

  class V1 < Sinatra::Base

    get '/greetings/hello' do
      pg :greeting, :locals => { :greeting => { :text => Greeter.new.say_hello } }
    end

  end
end
  