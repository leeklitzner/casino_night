require 'pry'

class High_Low
  attr_accessor :give_card, :next_card, :choice

  def initialize(name, cash)
    @name = name
    @cash = cash
    puts "Welcome to High Low Game #{@name}"
    run
  end

  def give
    puts "Here is your card."
    @give_card = rand(13) + 1
    if @give_card == 1
      puts "A"
    elsif @give_card <= 10
      puts @give_card
    elsif @give_card == 11
      puts "J"
    elsif @give_card == 12
      puts "Q"
    else
      puts "K"
    end
  end

  def choose_next_card
    @next_card = rand(13) + 1
    if @next_card == 1
      puts "A"
    elsif @next_card <= 10
      puts @next_card
    elsif @next_card == 11
      puts "J"
    elsif @next_card == 12
      puts "Q"
    else
      # give_card == 13
      puts "K"
    end

    if @give_card == @next_card
      choose_next_card
    else
      next_c
    end
  end

  def next_c
    if @choice == "h"
      if @next_card == 1
        puts "you are right."
        @cash += 10
        puts @cash
      elsif @give_card == 1
        puts "Sorry you are wrong"
        @cash -= 10
        puts @cash
      elsif @give_card < @next_card
        puts "you are right"
        @cash += 10
        puts @cash
      else
        puts "Sorry you are wrong"
        @cash -= 10
        puts @cash
      end
    elsif @choice == 'l'
      if @next_card == 1
        puts "Sorry you are wrong."
        @cash -= 10
        puts @cash
      elsif @give_card == 1
        puts "you are right."
        @cash += 10
        puts @cash
      elsif @give_card > @next_card
        puts "you are right"
        @cash += 10
        puts @cash
      else
        puts "Sorry you are wrong"
        @cash -= 10
        puts @cash
      end
       # @give_card > @next_card
    else
      puts "Invalid entry"
      next_card
    end
  end

  def ask
    puts "Would you like to play again? y/n"
    ans = gets.strip.downcase
    case ans
    when "y"
      run
    when "n"
      puts "Good bye."
    else
      puts "Invalid entry."
      ask
    end
  end


  def run
    give
    puts "Is next card High or Low than your card? h/l"
    @choice = gets.strip.downcase
    choose_next_card
    # next_c
    ask
  end
end

# puts rand(13)
