require 'pry'
require 'colorize'
class Horserace
	attr_accessor :horse_name, :wallet

	def initialize(name, wallet)
	    @name = name
		@wallet = wallet
	    game_menu
        to_casino
	end
 #=======================================================================
	def game_menu
puts"      ______           _                ____            __       ".colorize(:yellow)  
puts"     / ____/___ ______(_)___  ____     / __ \\___  _____/ /_  __  __".colorize(:yellow)
puts"    / /   / __ `/ ___/ / __ \\/ __ \\   / / / / _ \\/ ___/ __ \\/ / / /".colorize(:yellow)
puts"   / /___/ /_/ (__  ) / / / / /_/ /  / /_/ /  __/ /  / /_/ / /_/ / ".colorize(:yellow)
puts"   \\____/\\__,_/____/_/_/ /_/\\____/  /_____/\\___/_/  /_.___/\\__, / ".colorize(:yellow) 
puts "                                                          /____/  ".colorize(:yellow)         
                          
      
        puts "BANKROLL: $#{@wallet}"                            
                                                                                                                                                                                                                                                  
		puts "There is a $50 minimum bid"
		puts "1: Check out the horses"
		puts "2: Place a wager"
		puts "3: Return to the Casino"
		choice = gets.to_i
	
	  case choice
		when 1
	 		horses
		when 2
			 wager
		when 3
			 to_casino
		else
			puts "That is an invalid option, please choose a number from the menu."
			game_menu
	  end
	end
#========================================================================
	def horses
     	puts "The Champions stable"
		puts "Shadowfax: ".colorize(:green)
		puts "The Lord of all horses"
		puts "Tumbleweed: ".colorize(:green)
		puts "A promising young thouroghbreed out of Jamaica, (locals call him cool runnings)"
		puts "The Grand Chaw-Hee".colorize(:green)
		puts "It's his birthday"
		puts "Oats".colorize(:green)
		puts "A farm horse, part of a long prized bloodline"
		puts "Gilderoy".colorize(:green)
		puts "A kooky old horse that has a knack of taking credit, and trophies for other horses wins."
		puts "Pegasus".colorize(:green)
		puts "Hercules's noble steed"
		puts "\n"
		puts "Hit any button to return to menu"
		back = gets
		if back == "n"
			game_menu
        else
        	game_menu
        end
	end
	
    #==================================================================

    def to_casino
    
    end
    
	#===================================================================
	def wager
		if @wallet < 50.00
    	puts "Sorry #{@name}, it looks like you are too poor!"
    	puts "There is a $50.00 minimum wager at the track, and you only have $#{@wallet}"
    	game_menu
        end
        
        puts "How much would you like to put down on your horse?"
		@wager = gets.to_i
	
		if @wager < 50.00
			puts "Sorry the minimum bid is $50.00 "
			wager
			
		else
			pick_horse
		end 
	end
	#================================================================
	def pick_horse
	 	horses = ["Tumbleweed", "Shadowfax", "GimpyGonzoles", "Oats", "Gildiroy", "Pegasus"].shuffle
		
		puts "We have a 6 horse race today, pick your winning horse"
		puts "1) 3:1 #{horses[0]}"
		puts "2) 5:1 #{horses[1]}"
		puts "3) 6:1 #{horses[2]}"
		puts "4) 2:1 #{horses[3]}"
		puts "5) 15:1 #{horses[4]}"
		puts "6) 4:1 #{horses[5]}"
	 choice = gets.to_i
	 
	 winner = [1,2,3,4,5,6].sample
	
	
	 if choice != winner 
	  @wallet = @wallet - @wager
	  puts "Well, that sucks you just lost $#{@wager}!!! you now have $#{@wallet}"
	  game_menu
	 end 
	 
	 case choice
	  when 1
	  hrs1 = @wager * 3
	  @wallet = @wallet + (hrs1)
	  puts "congratulations you won $#{hrs1}!!! you now have $#{@wallet}"
	  game_menu 
	  when 2
	  hrs2 = @wager * 5
	  @wallet = @wallet + (hrs2)
	  puts "congratulations you won $#{hrs2}!!! you now have $#{@wallet}"
	  game_menu 
	  when 3
	  hrs3 = @wager * 6
	  @wallet = @wallet + (hrs3)
	  puts "congratulations you won $#{hrs3}!!! you now have $#{@wallet}"
	  game_menu 
	  when 4
	  hrs4 = @wager * 2
	  @wallet = @wallet + (hrs4)
	  puts "congratulations you won $#{hrs4}!!! you now have $#{@wallet}"
	  game_menu 
	  when 5
	  hrs5 = @wager * 15
	  @wallet = @wallet + (hrs5)
	  puts "congratulations you won $#{hrs5}!!! you now have $#{@wallet}"
	  game_menu 
	  when 6
	  hrs6 = @wager * 4
	  @wallet = @wallet + (hrs6)
	  puts "congratulations you won $#{hrs6}!!! you now have $#{@wallet}"
	  game_menu 
	  else
	  game_menu
	  end
	end
end