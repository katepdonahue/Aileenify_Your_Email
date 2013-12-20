require 'bundler'
Bundler.require


class App < Sinatra::Application

  get '/' do
    erb :index
  end

  post '/' do
    @output = params["email"].aileenify
    erb :index
  end
 
end



