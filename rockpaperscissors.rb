my_array = ["Rock", "Paper", "Scissors"]
wins = 0
losses = 0
ties = 0
player_rock = 0
player_paper = 0
player_scissors = 0

class RPS
  def initialize(name, bank)
    @name = name
    @bank = bank

  end
  def random
     shuffle.first
  end
end

puts "Hey #{@name}! Let's play rock-paper-scissors! Do you want to? (y/n)"
game = gets.chomp
until game.to_str == 'n'
if game.to_str == "n"
  puts "Let me know if you change your mind, you know where to find me!"
  exit!
end
if game.to_str == "y"
	puts "Great! Pick your weapon of choice! (Enter 'rock', 'paper', or 'scissors')"
	input = gets.chomp
	ai = my_array.random
	puts "You chose #{input}, and I chose #{ai}!"
	if ai == "Rock"
		if input.to_str == "rock"
			puts "Looks like its a tie! We'll have to settle this next time!"
			ties += 1
			player_rock += 1
			puts "Do you want to play again?(y/n)"
			game = gets.chomp
		end
		if input.to_str == "paper"
			puts "Well done, you have beaten the house!"
			wins += 1
			player_paper += 1
			puts "Do you want to play again?(y/n)"
			game = gets.chomp
		end
		if input.to_str == "scissors"
			puts "You are a LOSER!!! I WIN!!!"
			losses += 1
			player_scissors += 1
			puts "Do you want to play again?(y/n)"
			game = gets.chomp
		end
	end
	if ai == "Paper"
		if input.to_str == 'rock'
			puts "Nice try, but you lose!"
			losses += 1
			player_rock += 1
			puts "Do you want to play again?(y/n)"
			game = gets.chomp
		end
		if input.to_str == "paper"
			puts "Looks like it's a tie!"
			ties += 1
			player_paper += 1
			puts "Do you want to play again?(y/n)"
			game = gets.chomp
		end
		if input.to_str == "scissors"
			puts "Winner, winner, chicken dinner!"
			wins += 1
			player_scissors += 1
			puts "Do you want to play again?(y/n)"
			game = gets.chomp
		end
	end
	if ai == "Scissors"
		if input.to_str == "rock"
			puts "Aww, looks like you won this time! I'll get you next time we play!"
			wins += 1
			player_rock += 1
			puts "Do you want to play again?(y/n)"
			game = gets.chomp
		end
		if input.to_str == 'paper'
			puts "Psshhhh....LOSER LOSER LOSER!"
			losses += 1
			player_paper += 1
			puts "Do you want to play again?(y/n)"
			game = gets.chomp
		end
		if input.to_str == 'scissors'
			puts "Looks like we have a stalemate on our hands!"
			ties += 1
			player_scissors += 1
			puts "Do you want to play again?(y/n)"
			game = gets.chomp
		end
	end
	else
		puts "That was not a valid choice, please make another one."
		game = 'n'
	end
end
puts "During this session of playing, you won #{wins} game(/s), lost #{losses} game(/s), and tied #{ties} time(/s)!"
puts "You also played rock #{player_rock} time(/s), paper #{player_paper} time(/s), and scissors #{player_scissors} time(/s)!"
exit!
