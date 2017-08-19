class FeaturedOffers::CLI

  attr_accessor :name, :description

  def self.now
    self.scrape_deals
  end

  def self.scrape_deals
    deals = []
    deals << self.scrape_name
    deals
  end

  def self.scrape_name
    page = Nokogiri::HTML(open("https://meh.com"))

    deal = self.new
    deal.name = page.css("h2.main-title").text.strip
    deal.description = page.css("section.features").text.strip
    #binding.pry
    deal
  end

end
