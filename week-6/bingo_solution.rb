# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 2.5 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Have an array that is each letter and use the random number generator to choose one of the letters depending on the index. You can use another random generator to select a number from 1 to 100 at random. 

# Check the called column for the number called.
  #Go through each column and see if the column has the number. You'll have to check the index according to the letter. The first letter can have the 0th index for each array, the second will have the first, and so on. 

# If the number is in the column, replace with an 'x'
  #Check to see if the number that was drawn at random is in the board in the right column. If the number is in the column, you want to change the item in teh array so that it is now equal to an x. If not, put a sentence saying it does not exist.  

# Display the board to the console (prettily)
  #Print the board to the console with each column on new lines.

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
  COLUMN_MAPS = {
    "b" => 0,
    "i" => 1,
    "n" => 2,
    "g" => 3,
    "o" => 4,
  }

  def initialize(board)
    @bingo_board = board
  end

  def generate
    rand_letter = COLUMN_MAPS.keys.sample
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

# #Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style? - Writing the pseudocode wasn't too difficult. I wrote every step which really helped in solving the problem and going through step-by-step what was needed. 
# What are the benefits of using a class for this challenge? - Using a class helped use different methods inside other methods, as well as use instance variables in different methods inside the class. 
# How can you access coordinates in a nested array? - You can access coordinates in a nested arrray by having the first coordinate the first array within the array, and the second coordinate the element in that array. You can use this by using .each method to first iterate over the array, and then another each method to iterate over the items in the nested array. 
# What methods did you use to access and modify the array? - In the first method I used transpose, which put similar letters in the same row by rotating the array clockwise. On the second one, I used a hash to access items of similar coordinates in each column. 
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called? - All the methods I learned were ones I've previously used, however I learned that by adding .transpose on an already transposed matrix, you will un-transpose the matrix. 
# How did you determine what should be an instance variable versus a local variable? - I determined what should be an instance variable as whether I'll need to use it in other methods. For example, the bing_board needed to be used throughout, so I chose that to be an instance variable. 
# What do you feel is most improved in your refactored solution? - I think the sloppiness that came with transposing the board has been greatly improved with my refactored version. I'm sure there are ways to better display the board, but the refactored version seems cleaner than my first solution. 

