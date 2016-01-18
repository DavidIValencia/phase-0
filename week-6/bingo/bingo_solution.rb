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

=begin

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
    @current_call = nil
  end

  attr_accessor :bingo_board
  attr_accessor :current_call

  def call
    call_hash = {1 => "B", 2 => "I", 3 => "N", 4 => "G", 5 => "O"}
    @current_call = "#{call_hash[rand(1..5)]}" + "#{rand(1..100)}"
  end

  def check
    @bingo_board.map do |array|
      if array[0] == current_call
        @bingo_board[@bingo_board.index(array)][0] = "x"
      end
      if array[1] == current_call
        @bingo_board[@bingo_board.index(array)][1] = "x"
      end
      if array[2] == current_call
        @bingo_board[@bingo_board.index(array)][2] = "x"
      end
      if array[3] == current_call
        @bingo_board[@bingo_board.index(array)][3] = "x"
      end
      if array[4] == current_call
        @bingo_board[@bingo_board.index(array)][4] = "x"
      end
    end
    puts "#{bingo_board[0]}"
    puts "#{bingo_board[1]}"
    puts "#{bingo_board[2]}"
    puts "#{bingo_board[3]}"
    puts "#{bingo_board[4]}"
  end
end

=end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_board.map do |bingo_row|
      bingo_row[0] = "B#{bingo_row[0]}"
      bingo_row[1] = "I#{bingo_row[1]}"
      bingo_row[2] = "N#{bingo_row[2]}"
      bingo_row[3] = "G#{bingo_row[3]}"
      bingo_row[4] = "O#{bingo_row[4]}"
    end
    @current_call = nil
  end

  attr_accessor :bingo_board
  attr_accessor :current_call

  def call
    bingo_column_hash = {1 => "B", 2 => "I", 3 => "N", 4 => "G", 5 => "O"}
    @current_call = "#{bingo_column_hash[rand(1..5)]}" + "#{rand(1..100)}"
    puts "The current call is #{current_call}"
  end

  def check
    @bingo_board.map do |row|
      5.times do |column|
        if row[column] == current_call
          @bingo_board[@bingo_board.index(row)][column] = "x"
        end
      end
    end
    bingo_board.each {|bingo_row| puts "#{bingo_row}"}
  end

end


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
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

What are the benefits of using a class for this challenge?

You could set up multiple bingo boards and act on them with call and check simultaneously.  It scales way better than using other methods of programming we've seen thus far.  I could improve elements of the class and improve all of the instances.

How can you access coordinates in a nested array?

By iterating or accessing with [index] into the nested array.  I also used .times to iterate in this challenge.  You essentially can iterate normally, you just have to do it twice.

What methods did you use to access and modify the array?

I used map within initialize in order to modify the array by column with each number on the bingo board.  This is the cleanest way, in my opinion, to designate the numbers by their columns while also keeping them in their rows.  I also use another map within my check function in order to change the bingo board if the last number called matches

Give an example of a new method you learned while reviewing the Ruby docs.

One of the methods that I have used a bit that I learned from Ruby docs is kind_of?.

Based on what you see in the docs, what purpose does it serve, and how is it called?

This method allows you you determine what objects are by their class.  For example, if you wanted to identify if x is an array, you would type in x.kind_of?(Array).  Ruby will then return true or false.  This is extremely useful for sorting data and determining what kind of object you are working with.

How did you determine what should be an instance variable versus a local variable?

Basically, everything that had to be accessed by the other classes was set up with a instance variable, and I set up local variables for everything my classes needed to do to modify the instance variables.  This challenge became a lot easier when I changed current_call into being an instance variable.

What do you feel is most improved in your refactored solution?

The code is a lot cleaner to read now.  I was repeating myself quite a bit before in the initial solution, and this one eliminates a lot of that.  The cleaner solution is also a lot easier to modify if I wanted to change the way my class worked.

=end
