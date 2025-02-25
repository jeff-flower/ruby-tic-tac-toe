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
    false
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
