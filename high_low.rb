require 'pry'
class BrainTeaser
  attr_accessor :arr
  def initialize
    @arr = []
    start_player
  end
  def decor
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%"
  end
  def fill_array
    puts "Add a number in your array."
    number = gets.to_i
    @arr << number
    menu
  end
  def view_array
    @arr.each do |n|
      puts n
    end
    decor
    menu
  end
  def get_the_lowest
    y = @arr[0]
    @arr.each do |x|
      if x < y
        y = x
      end
    end
    puts "the heighest numbe is #{y}"
    # @arr.clear
    decor
    menu
  end
  def get_the_highest
    y = @arr[0]
    @arr.each do |x|
      if x > y
        y = x
      end
    end
    puts "the heighest number is #{y}"
    # @arr.clear
    decor
    menu
  end
  def initial_menu
    puts "Welcome to Your array."
    decor
    input_times = 1
    while input_times <= 3
    fill_array
    input_times += 1
    end
  end
  def menu
    puts "===== Options =======
    1) Add a number
    2) View
    3) Get the lowest
    4) Get the Highest
    5) Exit"
    choice = gets.to_i
    decor
    case choice
      when 1
        fill_array
        decor
      when 2
        view_array
        decor
      when 3
        get_the_lowest
        decor
      when 4
        get_the_highest
        decor
      when 5
        puts "See you again"
        Casino.new
      else
        puts "Invalid entry. Please choose from menu."
        menu
      end
  end
  def start_player
    initial_menu
    menu
  end
end
#BrainTeaser.new
