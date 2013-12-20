require 'bundler'
Bundler.require
require './lib/email'


class App < Sinatra::Application

  get '/' do
    erb :index
  end

  post '/aileen' do
    @output = params["email"]
    erb :results
  end
 
end



