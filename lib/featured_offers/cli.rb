class FeaturedOffers::CLI

  def call
    list
    choice
    bye
  end

  def list
    puts "Hi, this is the deal of the day!"

    @deals = FeaturedOffers::CLI.now
    @deals.each.with_index(1) do |deal, i|
    puts "#{i}. #{deal.name} - #{deal.description}"

    puts "Type Enter"
  end
end

  def choice
    input = gets.strip
      puts "This is a great product. Youll love it. Thank you for shopping with us!"
    end

  def bye
    puts "Thank you for using the Gem."
    end

  end
