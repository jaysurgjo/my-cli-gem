class FeaturedOffers::CLI

  def call
    greeting
    list
    choice
    bye
  end

  def greeting
    puts "Thank you for using my gem and I hope you have a great time using it."
    puts "These are the deals of the day."
  end

  def list
    @deals = FeaturedOffers::CLI.now
    @deals.each.with_index(1) do |deal, i|
      #binding.pry
    puts "#{i}. #{deal.name} - #{deal.description}"
    end
  end

  def choice
    input = nil
    while input != "exit"
    puts "Type the number of the deal that you want to select or list to see the deals again or exit to exit."
    input = gets.strip

       if input.to_i > 0 && input.to_i <= 50
         the_deal = @deals[input.to_i-1]
         puts "#{the_deal.name} - #{the_deal.description}"
       elsif input == "list"
         list
       else
         puts "Im not sure what you want. You'll be exiting the gem now."
     end
   end
 end

 def bye
    puts "Thank you for using the Gem."
  end
 end
