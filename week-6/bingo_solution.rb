# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Have an array that is each letter and use the random number generator to choose one of the letters depending on the index. You can use another random generator to select a number from 1 to 100 at random. 

# Check the called column for the number called.
  #Go through each column and see if the column has the number. You'll have to check the index according to the letter. The first letter can have the 0th index for each array, the second will have the first, and so on. 

# If the number is in the column, replace with an 'x'
  #Check to see if the number that was drawn at random is in the board in the right column. If the number is in the column, you want to change the item in teh array so that it is now equal to an x. If not, put a sentence saying it does not exist. 

# Display a column to the console
  #Show just the column for the letter to the console. 

# Display the board to the console (prettily)
  #Print the board to the console. 

# Initial Solution

# class BingoBoard
#   attr_reader :bingo

#   def initialize(board)
#     @bingo_board = board
#     @columns = ["b","i","n","g","o"]
#   end

#   def check_board
#     @rand_letter = @columns[rand(0..@columns.length-1)]
#     @rand_num = rand(1..100)
#   end

#   def check_num_in_column
#     @board_rotate = @bingo_board.transpose
#     @board_rotate.map!.with_index do |row, index|
#       row.map! do |num|
#         if index == @columns.index(@rand_letter) && num == @rand_num
#           num = 'X'
#         else
#           num
#         end
#       end
#     end
#     # print @board_rotate.transpose
#   end

# def display_board
#   puts "Time to play BiNgO!"
#   @board_rotate.transpose.each do |row|
#     print row.to_s + "\n"
#   end
#   end

# end


# Refactored Solution

class BingoBoard
  attr_reader :bingo
  COLUMN_MAPS = {
    "b" => 0,
    "i" => 1,
    "n" => 2,
    "g" => 3,
    "o" => 4,
  }

  def initialize(board)
    @bingo_board = board
    @columns = ["b","i","n","g","o"]
  end

  def generate
    rand_letter = @columns.sample
    rand_num = rand(1..100)
    [rand_letter, rand_num]
  end

  def check_num_in_column(coord)
    puts coord
    @bingo_board.each do |row|
      row.each_index do |num_idx|
        if num_idx == COLUMN_MAPS[coord[0]] && row[num_idx] == coord[1]
          row[num_idx] = 'X'
        end
      end
    end
  end

  def play_round
    check_num_in_column(generate)
  end

  def display_board
    puts "Time to play BiNgO!"
    @bingo_board.each do |row|
      print row.to_s + "\n"
    end
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]



new_game = BingoBoard.new(board)
new_game.play_round
new_game.display_board

#Reflection
