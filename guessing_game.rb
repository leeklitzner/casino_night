
require 'pry'

class Guessing
  attr_accessor :name, :bank

  def initialize(name, bank)
    @name = name
    @bank = bank
    puts "#{@name}, Let's see if you can guess THE NUMBER."
    run
  end

  def run
    puts "Choose a number between 1 to 100: "
    usernum = gets.to_i
    number = rand(100)
    puts number
    case number
    when "usernum"
      puts "You win"
      puts "☆┌─┐  ─┐☆"
      puts　"│▒│ /▒/"
      puts　"│▒│/▒/"
      puts　"│▒/▒/─┬─┐◯"
      puts　"│▒│▒|▒│▒│"
      puts"┌┴─┴─-┘─┘"
      puts"│▒┌──┘▒▒▒│◯"
      puts"└┐▒▒▒▒▒▒┌┘"
      puts"◯└┐▒▒▒▒┌"
      @bank = @bank + 5
      puts @bank
      puts "You have $#{@bank} in your wallet."
    else
      puts "You lose."
      puts  "                ░░▄▀░░░░░░░░░░░░░░░▀▀▄▄░░░░░"
      puts "               ░░▄▀░░░░░░░░░░░░░░░░░░░░▀▄░░░"
      puts "               ░▄▀░░░░░░░░░░░░░░░░░░░░░░░█░░"
      puts "               ░█░░░░░░░░░░░░░░░░░░░░░░░░░█░"
      puts "               ▐░░░░░░░░░░░░░░░░░░░░░░░░░░░█"
      puts "               █░░░░▀▀▄▄▄▄░░░▄▌░░░░░░░░░░░░▐"
      puts "               ▌░░░░░▌░░▀▀█▀▀░░░▄▄░░░░░░░▌░▐"
      puts "               ▌░░░░░░▀▀▀▀░░░░░░▌░▀██▄▄▄▀░░▐"
      puts "               ▌░░░░░░░░░░░░░░░░░▀▄▄▄▄▀░░░▄▌"
      puts "               ▐░░░░▐░░░░░░░░░░░░░░░░░░░░▄▀░"
      puts "               ░█░░░▌░░▌▀▀▀▄▄▄▄░░░░░░░░░▄▀░░"
      puts "               ░░█░░▀░░░░░░░░░░▀▌░░▌░░░█░░░░"
      puts "               ░░░▀▄░░░░░░░░░░░░░▄▀░░▄▀░░░░░"
      puts "               ░░░░░▀▄▄▄░░░░░░░░░▄▄▀▀░░░░░░░"
      puts "               ░░░░░░░░▐▌▀▀▀▀▀▀▀▀░░░░░░░░░░░"
      puts "               ░░░░░░░░█░░░░░░░░░░░░░░░░░░░░"
      puts "               ░░╔═╗╔═╗╔═╗░░░░░║░║╔═╗║░║░░░░"
      puts "               ░░╠═╣╠╦╝╠╣░░░░░░╚╦╝║░║║░║░░░░"
      puts "               ░░║░║║╚═╚═╝░░░░░░║░╚═╝╚═╝░░░░"
      puts "               ║╔═░╦░╦═╗╦═╗╦╔╗║╔═╗░░╔╦╗╔═╗╔╗"
      puts "               ╠╩╗░║░║░║║░║║║║║║═╗░░║║║╠╣░╔╝"
      puts "               ║░╚░╩░╩═╝╩═╝╩║╚╝╚═╝░░║║║╚═╝▄░"
      @bank = @bank - 5
      puts "You have $#{@bank} in your wallet."
    end
    guess_again
  end

  def guess_again
    puts "Would you like to try again? y/n"
    case gets.strip.downcase
    when "y"
      run
    when "n"
      puts "See you soon."
    else
      puts "Invalid entry."
      guess_again
    end
  end
end
