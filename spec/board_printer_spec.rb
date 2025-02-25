require './lib/board'
require './lib/board_printer'

describe BoardPrinter do
  describe '#print' do
    context 'when the board is empty' do
      it 'prints a 1 row game board' do
        board = Board.new(1)
        board_printer = described_class.new(board)

        expected = '   '

        expect(board_printer.print).to eq(expected)
      end

      it 'prints a 2 row game board' do
        board = Board.new(2)
        board_printer = described_class.new(board)

        expected = "   |   \n-------\n   |   "

        expect(board_printer.print).to eq(expected)
      end

      it 'prints a 3 row game board' do
        board = Board.new(3)
        board_printer = described_class.new(board)

        expected = "   |   |   \n-----------\n   |   |   \n-----------\n   |   |   "

        expect(board_printer.print).to eq(expected)
      end
    end

    context 'when a move has been made' do
      it 'prints X for player 1' do
        board = Board.new(3)
        board_printer = described_class.new(board)
        board.move(1, 0, 0)

        expected = " X |   |   \n-----------\n   |   |   \n-----------\n   |   |   "

        expect(board_printer.print).to eq(expected)
      end

      it 'prints O for player 2' do
        board = Board.new(3)
        board_printer = described_class.new(board)
        board.move(2, 0, 0)

        expected = " O |   |   \n-----------\n   |   |   \n-----------\n   |   |   "

        expect(board_printer.print).to eq(expected)
      end
    end

    context 'when each player has moved' do
      it 'prints X for player 1 and O for player 2' do
        board = Board.new(3)
        board_printer = described_class.new(board)
        board.move(1, 0, 0)
        board.move(2, 0, 1)

        expected = " X | O |   \n-----------\n   |   |   \n-----------\n   |   |   "

        expect(board_printer.print).to eq(expected)
      end
    end
  end
end
