require 'pry'

class High_Low
  attr_accessor :give_card, :next_card, :choice

  def initialize(player)
    # @name = name
    # @cash = cash
    @player = player
    puts "Welcome to High Low Game #{@player.name}"
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
      puts "Getting next card for you."
      choose_next_card
    else
      next_c
    end
  end

  def next_c
    if @choice == "h"
      if @next_card == 1
        puts "you are right."
        # @cash += 10
        @player.bankroll += 10
        # puts @cash
        puts @player.bankroll
      elsif @give_card == 1
        puts "Sorry you are wrong"
        # @cash -= 10
        @player.bankroll -= 10
        puts @player.bankroll
      elsif @give_card < @next_card
        puts "you are right"
        # @cash += 10
        @player.bankroll += 10

        puts @player.bankroll
      else
        puts "Sorry you are wrong"
        # @cash -= 10
        @player.bankroll -= 10
        puts @player.bankroll
      end
    elsif @choice == 'l'
      if @next_card == 1
        puts "Sorry you are wrong."
        # @cash -= 10
        @player.bankroll -= 10
        puts @player.bankroll
      elsif @give_card == 1
        puts "you are right."
        # @cash += 10
        @player.bankroll += 10
        puts @player.bankroll
      elsif @give_card > @next_card
        puts "you are right"
        # @cash += 10
        @player.bankroll += 10
        puts @player.bankroll
      else
        puts "Sorry you are wrong"
        # @cash -= 10
        @player.bankroll -= 10
        puts @player.bankroll
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
      # binding.pry

      puts "Good bye."
    else
      puts "Invalid entry."
      ask
    end
  end


  def run
    # @player1 = Player.new
    give
    puts "Is next card High or Low than your card? h/l"
    @choice = gets.strip.downcase
    choose_next_card
    # next_c
    ask
  end
end

# puts rand(13)
