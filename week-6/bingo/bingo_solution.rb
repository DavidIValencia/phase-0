# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2] hours on this challenge.


# Release 0: Pseudocode
# Outline:  Input:  Array containing 5 arrays
#Output:  Board that can be interacted with the methods call and check.  Call randomly generates a bingo number, and check checks that bingo number to see if the board contains it, if it does replaces the number with an x, and then displays the bingo board.

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #Use rng to generate a letter and a number.  This will have to be readable to other methods.

# Check the called column for the number called.
  #fill in the outline here
  #iterate over the nested bingo arrays to check if there is a number that matches the last called

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  #If the number exists, replace it with x

# Display the board to the console (prettily)
  #fill in the outline here
  #displaying the board line by line

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_board.map do |array|
      array[0] = "B#{array[0]}"
      array[1] = "I#{array[1]}"
      array[2] = "N#{array[2]}"
      array[3] = "G#{array[3]}"
      array[4] = "O#{array[4]}"
    end
    @current_call = 0
  end

  attr_accessor :bingo_board
  attr_accessor :current_call

  def call
    call_hash = {1 => "B", 2 => "I", 3 => "N", 4 => "G", 5 => "O"}
    @current_call = "#{call_hash[rand(1..5)]}" + "#{rand(1..100)}"
  end

  def check
    puts "#{bingo_board[0]}"
    puts "#{bingo_board[1]}"
    puts "#{bingo_board[2]}"
    puts "#{bingo_board[3]}"
    puts "#{bingo_board[4]}"
    p current_call
  end



end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check


#Reflection