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

end