require 'pry'
require_relative 'high_low'

class Casino
  attr_accessor :name
  def initialize
    puts "Welcome to the best Casino in Salt Lake"
    Player.new
    enter
  end

  def enter
    puts "Casino Games"
    puts "1) High or Low"
    puts "Choose one"
    choice = gets.strip
    case choice
      when "1"
        BrainTeaser.new
      else
        enter
    end
    enter
  end

end

class Player
  attr_accessor :name, :age, :bankroll, :enter
  def initialize
    puts "What is your name?"
    @name = gets.strip

    puts "How old are you?"
    @age = gets.strip

    puts "How much money do you have?"
    @bankroll = gets.to_i

    puts @name
    puts @age
    puts @bankroll

  end
end

# class Get_Info
#   attr_accessor :username, :userage
#   def initialize
#
#     puts "How old are you?"
#     @userage = gets.strip
#     Player.new(@username, @userage)
#   end
# end

class Wallet
  attr_accessor :amount
  def initialize
    puts "How much money do you have?"
    @amount = gets.to_f
  end
end

Casino.new
