require 'bundler'
Bundler.require
require './lib/email'


class App < Sinatra::Application

  get '/' do
    haml :index
  end

  post '/aileen' do
    @output = params["email"].aileenify
    haml :results
  end
 
end



