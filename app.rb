require 'bundler'
Bundler.require


class App < Sinatra::Application

  get '/' do
    @output = params["email"].aileenify
    erb :index
  end

  post '/' do
    erb :index
  end
 
end



