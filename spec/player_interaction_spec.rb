require './lib/board'
require './lib/player_interaction'

describe PlayerInteraction do
  it 'prompts the given player for a move' do
    board = Board.new(3)

    input = StringIO.new("1,1\n")
    output = StringIO.new

    player_interaction = described_class.new(board, input, output)
    player_interaction.get_player_move(1)
    expect(output.string).to eq "Player 1 move (row, column)\n"
  end

  #xit 'parses a move from the command line' do
    # board = Board.new(3)
    # player_interaction = described_class.new(board)

    # expect(board.board[0][0]).to be 1
  #end

  # print game board somewhere?
end
