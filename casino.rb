require 'pry'
require_relative 'highlow'
require_relative 'coin'
require_relative 'guessing_game'
require_relative 'horse_race'

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
  end
end

class Casino
  attr_accessor :name, :player, :age
  def initialize
    puts "Welcome to the best Casino in Salt Lake"
    @player = Player.new
    @name = name
    @age = age
    enter
  end

  def enter
    puts "You have $#{@player.bankroll} in your wallet"
    puts "Casino Games"
    puts "1) High or Low"
    puts "2) Coin Game"
    puts "3) Guessing Game"
    puts "4) Horse Race"
    puts "5) Rock, Paper, Scissors"
    puts "6) Exit"
    puts "Choose one"
    choice = gets.strip
    case choice
      when "1"
        High_Low.new(@player.name, @player.bankroll)
      when "2"
        Coin.new(@player.name, @player.bankroll)
      when "3"
        Guessing.new(@player.name, @player.bankroll)
      when "4"
        Horserace.new(@player.name, @player.bankroll)
      when "5"
        RPS.new(@player.name, @player.bankroll)
      when "6"
        puts "See you soon."
        exit
      else
        puts "Invalid entry please choose from menu"
        enter
    end
    enter
  end

end

Casino.new
