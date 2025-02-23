require './lib/board'

describe Board do
  describe '#initialize' do
    it 'defaults the number of rows 3' do
      board = described_class.new
      expect(board.num_rows).to be 3
    end

    it 'defaults the number of columns to 3' do
      board = described_class.new
      expect(board.num_columns).to be 3
    end

    it 'sets rows to the provided argument' do
      board = described_class.new(1)
      expect(board.num_rows).to be 1
    end

    it 'sets columns to the provided argument' do
      board = described_class.new(1, 2)
      expect(board.num_columns).to be 2
    end
  end

  describe '#board' do
    it 'represents the current state of the board as a 2d array' do
      expected = [[nil]]

      board = described_class.new(1, 1)

      expect(board.board).to eq(expected)
    end
  end

  describe '#move' do
    it 'accepts a valid move' do
      expected = [[1]]

      board = described_class.new(1, 1)
      board.move(1, 0, 0)

      expect(board.board).to eq(expected)
    end

    it 'rejects a move when the space is already occupied' do
      board = described_class.new(1, 1)
      board.move(1, 0, 0)

      expect { board.move(2, 0, 0) }.to raise_error ArgumentError
    end

    it 'identifies when no more moves can be made' do
      board = described_class.new(1, 1)
      board.move(1, 0, 0)
      full = board.full?

      expect(full).to be true
    end
  end

  # Other thoughts
  # prints the game board: NO! separate class for this
  # rejects any move after the board is full => already rejects if space is taken, is an additional notification needed?
end
