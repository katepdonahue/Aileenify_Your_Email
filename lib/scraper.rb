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
      link = element.search("h2 a").first["href"]
      next if link.nil?
      links << link
    end
    links.sample
  end

  def get_gif
    gifs = []
    html.search(".featured-tags img").each do |img|
      gifs << img["src"]
    end
    gifs.sample
  end

end