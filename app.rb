ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  set :port, 4000

  post '/set' do
    p params
  end

end
