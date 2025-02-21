require 'lib/game_board'

describe GameBoard do
  it 'fails' do
    expect(2 + 2).to be 4
  end

  # prints the game board
  # accepts a valid move
  # rejects a move for an occupied space
  # rejects any move after the board is full
end
