# Prints the game board to the console
#
class BoardPrinter
  def initialize(board)
    @board = board
  end

  def print
    output = ""
    @board.board.each_with_index do |row, row_number|
      # print hyphens when not first or last row
      output << "#{row_divider}\n" unless row_number.zero?
      output << row_string(row)
      output << "\n" unless row_number == @board.num_rows - 1
    end

    output
  end

  private

  def row_divider
    divider = ''

    hyphen_count = (@board.num_columns * 3) + (@board.num_columns - 1)
    hyphen_count.times { |_| divider << '-' }

    divider
  end

  def row_string(row)
    str = ''

    row.each_with_index do |value, column_number|
      str << " #{column_char(value)} "
      str << '|' unless column_number == row.length - 1
    end

    str
  end

  def column_char(value)
    case value
    when 1
      'X'
    when 2
      'O'
    else
      ' '
    end
  end
end
