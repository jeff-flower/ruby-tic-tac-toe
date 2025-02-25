# Checks if there is a winner for a 2 player game of tic tac toe
class WinChecker
  def initialize(board)
    @board = board
  end

  def winner?
    return true if row_has_winner?
    return true if column_has_winner?
    return true if diagonal_has_winner?

    false
  end

  private

  def row_has_winner?
    @board.board.each do |row|
      return true if group_has_winner?(row)
    end

    false
  end

  def column_has_winner?
    columns = group_by_columns
    columns.each do |column|
      return true if group_has_winner?(column)
    end

    false
  end

  def diagonal_has_winner?
    return false if @board.size == 1

    return true if left_to_right_diagonal_has_winner?
    return true if right_to_left_diagonal_has_winner?

    false
  end

  def left_to_right_diagonal_has_winner?
    # TODO: even more, smaller functions???
    range = (0...@board.size)
    left_to_right_diagonal_coordinates = range.zip(range)

    diagonal_values = left_to_right_diagonal_coordinates.map { |(row, col)| @board.board[row][col] }

    group_has_winner?(diagonal_values)
  end

  def right_to_left_diagonal_has_winner?
    range = (0...@board.size)
    right_to_left_diagonal_coordinates = range.zip(range.to_a.reverse)

    diagonal_values = right_to_left_diagonal_coordinates.map { |(row, col)| @board.board[row][col] }

    group_has_winner?(diagonal_values)
  end

  def group_by_columns
    @board.board.transpose
  end

  def group_has_winner?(group)
    group_stats = group.tally
    return true if group_stats.size == 1 && !group_stats.include?(nil)

    false
  end
end
