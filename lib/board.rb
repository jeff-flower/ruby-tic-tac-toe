# Represents the game board for tic tac toe
# Board can be any size, by default will be 3x3
class Board
  attr_accessor :size, :board

  def initialize(size = 3)
    @size = size
    @board = build_board(size)
  end

  def move(player_number, row_number, column_number)
    # TODO: what if player number is invalid?
    unless @board[row_number][column_number].nil?
      raise ArgumentError, "board position #{row_number}, #{column_number} is already taken"
    end

    @board[row_number][column_number] = player_number
  end

  def full?
    @board.flatten.none?(nil)
  end

  private

  def build_board(size)
    Array.new(size) { Array.new(size) }
  end
end
