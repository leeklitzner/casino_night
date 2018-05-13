require 'pry'
require_relative 'high_low'
require_relative 'coin'

class Casino
  attr_accessor :name, :player
  def initialize
    puts "Welcome to the best Casino in Salt Lake"
    @player = Player.new
    enter
  end

  def enter
    puts "Casino Games"
    puts "1) High or Low"
    puts "2) Coin Game"
    puts "3) Guessing Game"
    puts "Choose one"
    choice = gets.strip
    case choice
      when "1"
        BrainTeaser.new
      when "2"
        Coin.new(@player.name, @player.bankroll)
      when "3"
        Guessing.new(@cats.name,@cats.bankroll)
      else
        puts "Invalid entry please choose from menu"
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
    @age = gets.to_i
    if @age < 18
      puts "Take a hike kid!"
      Casino.new
    end
    puts "How much money do you have?"
    @bankroll = gets.to_i

    # puts @name
    # puts @age
    # puts @bankroll

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

# class Wallet
#   attr_accessor :amount
#   def initialize
#     puts "How much money do you have?"
#     @amount = gets.to_f
#   end
# end

Casino.new
