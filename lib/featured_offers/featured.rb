class FeaturedOffers::CLI

  attr_accessor :name, :description

  def self.now
    self.scrape_deals
  end

  def self.scrape_deals
    page = Nokogiri::HTML(open("https://dealnews.com/"))
    deals = []
    counter = 0
    while counter < 50
    deals << self.scrape_name(counter, page)
    counter += 1
  end
    deals
  end

  def self.scrape_name(counter, page)
    deal = self.new
    #binding.pry
    deal.name = page.css("h3 a")[counter].text.strip
    deal.description = page.css(".content-details")[counter].text.strip
    #binding.pry
    deal
  end
end
