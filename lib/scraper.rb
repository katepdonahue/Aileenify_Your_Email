require 'open-uri'

class Scraper
  attr_reader :html

  def initialize url
    download = open(url)
    @html = Nokogiri::HTML(download)
  end

  def get_link
    links = []
    html.search("article").map do |element|
      link = element.search("h2 a")
      if link
        link = link.first
        link = link["href"] if link
      end
      next if link.nil?
      links << link
    end
    links.sample
  end

  def get_gif
    gifs = html.search(".gifs-gif")
    if gifs && gifs[rand(gifs.length)] && gifs[rand(gifs.length)]["data-animated"]
      gifs[rand(gifs.length)]["data-animated"]
    end 
  end

end