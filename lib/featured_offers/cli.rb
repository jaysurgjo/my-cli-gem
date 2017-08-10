class FeaturedOffers::CLI

  attr_accessor :selection

  def initalize(selection)
    @selection = selection
  end

  def call
    puts "-----------------------------------"
    puts "-----------------------------------"
    puts "Hi, what are you looking for today?"
    puts "We have everything that you are looking for."
    puts "pick your selecttion and we will see if we have it."
    puts "Make your selection now:"
    puts "-----------------------------------"
    puts "-----------------------------------"
    puts "Deal 1"
    puts "Deal 2"
    puts "-----------------------------------"
    puts "-----------------------------------"
    input=gets.chomp
    list
    additional_information
    bye
  end

  def list
    input = nil
    if input != nil
      puts "Try again"
    else input == nil
      puts "You've made a great choice. Thank you for shopping with us!"
    end
  end

  def additional_information
    puts "-----------------------------------"
    puts "-----------------------------------"
    puts "Do you want more information about this product (Y/N)?"
    puts "-----------------------------------"
    puts "-----------------------------------"

    input = gets.chomp
    if input == "Y"
      puts "description of the product"
    else input == "N"
      puts "Come back again. Thank you for shopping with us."
    end
  end

  def bye
    puts "Thank you for using the Gem."
    end
  end
