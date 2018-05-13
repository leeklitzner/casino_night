class Coin
  attr_accessor :side, :name, :bank

  def initialize(name,bank)
    @name = name
    @bank = bank
    game_menu
  end
  
  def game_menu
    puts "you have $#{@bank} in your wallet"
    puts "Hello, #{@name} flip a coin to make some money"
    puts "1: place a wager."
    puts "2: retutn to casino."
    choice = gets.to_i
    
    case choice
    when 1
    wager
    when 2
    to_casino
    else
    puts "not a valid option, choose an option from the menu"
    game_menu
    end
  end
  
  def to_casino
  end
  
  def wager
  #@regexnumber = /^\d+(\.\d+)?$/
  puts "Please place a wager"
    @wager = gets.to_i
    if @wager > @bank 
    puts "#{@name}?! you don't have that much money, wager only what you have!"
    wager
  #   elsif @wager == @regexnumber 
#     puts "not a valid entry"
#     wager
    else
    heads
    end
  end

  def heads
   puts "Pick heads or tails (heads/tails)"
    side = gets.strip.downcase
    nickle = ["heads","tails"].sample
    puts nickle
   if side != nickle
     @bank = @bank - @wager
     puts "That stinks it was #{nickle} you lost $#{@wager}"
     puts "You now have $#{@bank} in your wallet."
     puts ""
   elsif side == nickle
    @bank = @bank + @wager
    puts "Sweet it WAS #{nickle} you won, I bet that was the easiest $#{@wager} you've ever made"
     puts "You now have $#{@bank} in your wallet."
     puts ""
   else
      puts "Not a valid coice "
      heads
   end
 game_menu
  end
end
