# player interaction prompts for input on command line
# translates input to move on board
# DOES NOT: check for win
# DOES NOT: loop through players
class PlayerInteraction
  def initialize(board, input = $stdin, output = $stdout)
    @board = board
    @input = input
    @output = output
  end

  def get_player_move(player_number)
    @output.puts "Player #{player_number} move (row, column)"
    # row, column = @input.gets.chomp.split(',')

    # @board.move(player_number, row, column)

    # @output.puts "Player #{player_number} moved to #{row}, #{column}"
  end
end
