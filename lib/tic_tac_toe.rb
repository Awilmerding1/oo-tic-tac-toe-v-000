class TicTacToe
  def initialize(board)
    @board = board || Array.new(9, " ")
  end
  def board=(board)
    @board = [" "," "," "," "," "," "," "," "," "]
  end
  
end