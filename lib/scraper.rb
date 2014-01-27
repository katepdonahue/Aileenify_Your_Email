require 'open-uri'
require 'nokogiri'

class Scraper
  attr_reader :html

  def initialize url
    download = open(url)
    @html = Nokogiri::HTML(download)
  end

  def get_links

  end

end

my_scraper = Scraper.new("http://www.buzzfeed.com/")
puts my_scraper.get_links
