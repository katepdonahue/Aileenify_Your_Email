require 'open-uri'
require 'nokogiri'
require 'debugger'

class Scraper
  attr_reader :html

  def initialize url
    download = open(url)
    @html = Nokogiri::HTML(download)
  end

  def get_links
    links = []
    html.search("article").map do |element|
      link = element.search("h2 a").first["href"]
      next if link.nil?
      links << link
    end
    links
  end

end
