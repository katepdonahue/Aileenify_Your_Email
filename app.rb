require 'bundler'
Bundler.require
require './lib/email'
require './lib/scraper'

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
    buzz = Scraper.new "http://www.buzzfeed.com/"
    giphy = Scraper.new "http://giphy.com/"
    @link = "http://www.buzzfeed.com/#{buzz.get_link}"
    @gif = giphy.get_gif
    haml :results
  end
 
end



