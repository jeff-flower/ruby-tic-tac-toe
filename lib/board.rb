# Represents the game board for tic tac toe
# Board can be any size, by default will be 3x3
class Board
  attr_accessor :num_rows, :num_columns, :board

  def initialize(num_rows = 3, num_columns = 3)
    @num_rows = num_rows
    @num_columns = num_columns
    @board = build_board(num_rows, num_columns)
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

  def build_board(num_rows, num_columns)
    Array.new(num_rows) { Array.new(num_columns) }
  end
end
