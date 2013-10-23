module Blank

  class V1 < Sinatra::Base

    get '/whoami' do
      me = pebbles.checkpoint.get("/identities/me")
      [200, me.to_json]
    end

  end
end
  