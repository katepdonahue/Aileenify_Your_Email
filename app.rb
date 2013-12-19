require 'bundler'
Bundler.require


class App < Sinatra::Application

  get '/' do
    erb :index
  end

  get '/about' do
    erb :about
  end

  get '/projects' do
    erb :projects
  end
 
end



