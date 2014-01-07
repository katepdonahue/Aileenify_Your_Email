require 'bundler'
Bundler.require
require './lib/email'


class App < Sinatra::Application

  configure do
    Compass.configuration do |config|
      config.project_path = File.dirname(__FILE__)
      config.sass_dir = 'views'
    end

    set :haml, { :formt => :html5 }
    set :scss, Compass.sass_engine_options
  end

  get '/css/stylesheet.css' do
    scss :input
  end


  get '/' do
    haml :index
  end

  post '/aileen' do
    @output = params["email"].aileenify
    haml :results
  end
 
end



