class TicTacToe
  def initialize(board = nil)
    @board = Array.new(9, " ")
  end
  WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,4,8], [2,4,6], [0,3,6], [2,5,8], [1,4,7]]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} " 
    puts"-----------" 
    puts" #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------" 
    puts" #{@board[6]} | #{@board[7]} | #{@board[8]} " 
  end
  
  def input_to_index(user_input)
  converted_input = "#{user_input}".to_i
  return converted_input - 1
  end
  
  def move(index, token = "X")
  @board[index] = token
  return @board[index]
end
  def position_taken?(index)
  if @board[index] == " "
    return false
    elsif @board[index] == ""
    return false
    elsif @board[index] == nil 
    return false
    elsif @board[index] == "X" || @board[index] == "O"
    return true
end
end

def valid_move?(index)
  if position_taken?(index) == false && index.between?(0, 8)
  return true 
else
  return false
end
end


def turn(index) 
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  until valid_move?(index)
  return turn(index)
  end
  move(index, token = "X")
  display_board
end

def turn_count(index)
  counter = 0
  @board.each do |turns|
   if turns == "X" || turns == "O"
   counter += 1
  end
end
  return counter
end


def current_player(index)
  turn_count(index) % 2 == 0 ? "X" : "O"
end

def won?(index)
  WIN_COMBINATIONS.any? do |win_array|
    win_index_1 = win_array[0]
    win_index_2 = win_array[1]
    win_index_3 = win_array[2]
    position_1 = @board[win_index_1]
    position_2 = @board[win_index_2]
    position_3 = @board[win_index_3]
    if position_1 == "X" && position_2 =="X" && position_3 == "X"
      return win_array
    elsif position_1 == "O" && position_2 =="O" && position_3 == "O"
     return win_array
   else false 
    end
  end
  end 
  
  def full?(index)
@board.all? do |full_board|
full_board == "X" || full_board == "O"
end
end

def draw?(index)
  if full?(index) && !won?(index)
  return true 
else false
end
end

def over?(index)
  if full?(index) || won?(index) || draw?(index)
    return true
  else false
 end 
end
  
def winner(index)
  WIN_COMBINATIONS.find do |game_winner_array|
  win = @board[game_winner_array[0]]
    if won?(index) == game_winner_array && win == "X"
      return "X"
    elsif won?(index) == game_winner_array && win == "O"
      return "O"
   end
 end
end

