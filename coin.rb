class Coin
  attr_accessor :side, :name, :bank

  def initialize(name,bank)
    @name = name
    @bank = bank
    puts "Pick heads or tails (h/t)"
    puts "hello  #{@name}"
    heads
  end

  def heads
    side = gets.strip.downcase
    nickle = ["h","t"].sample
    puts nickle
   if side != nickle
     @bank = @bank - 5
     puts @bank
   elsif side == nickle
    @bank = @bank + 5
     puts @bank
   else
      puts "Not a valid coice "
      heads
   end
   heads
  end
end
