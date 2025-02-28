require './lib/board'
require './lib/board_printer'
require './lib/player_interaction'
require './lib/win_checker'

board = Board.new(3)
board_printer = BoardPrinter.new(board)
player_interaction = PlayerInteraction.new(board)
win_checker = WinChecker.new(board)

player_order = [1, 2]

player_order.cycle(nil) do |current_player|
  puts board_printer.print
  player_interaction.get_player_move(current_player)

  if win_checker.winner?
    puts 'We have a winner'
    puts board_printer.print
    break
  end
end
