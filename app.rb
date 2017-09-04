ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require_relative './lib/data_store'

class DatabaseServer < Sinatra::Base
  post '/set' do
    DataStore.set(params)
  end

  get '/get' do
    DataStore.get(params[:key])
  end
end
