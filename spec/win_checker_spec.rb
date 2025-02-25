require './lib/board'
require './lib/win_checker'

describe 'WinChecker' do
  describe '#winner?' do
    it 'returns false when there is no winner' do
      board = Board.new(3)
      win_checker = WinChecker.new(board)

      expect(win_checker.winner?).to be false
    end

    context 'when player 1 is the winner' do
      it 'recognizes 3 in the first row as a win' do
        board = Board.new(3)
        board.move(1, 0, 0)
        board.move(1, 0, 1)
        board.move(1, 0, 2)

        win_checker = WinChecker.new(board)

        expect(win_checker.winner?).to be true
      end

      it 'recognizes 3 in the second row as a win' do
        board = Board.new(3)
        board.move(1, 1, 0)
        board.move(1, 1, 1)
        board.move(1, 1, 2)

        win_checker = WinChecker.new(board)

        expect(win_checker.winner?).to be true
      end

      it 'recognizes 3 in the third row as a win' do
        board = Board.new(3)
        board.move(1, 2, 0)
        board.move(1, 2, 1)
        board.move(1, 2, 2)

        win_checker = WinChecker.new(board)

        expect(win_checker.winner?).to be true
      end

      it 'recognizes 3 in the first column as a win' do
        board = Board.new(3)
        board.move(1, 0, 0)
        board.move(1, 1, 0)
        board.move(1, 2, 0)

        win_checker = WinChecker.new(board)

        expect(win_checker.winner?).to be true
      end

      it 'recognizes 3 in the second column as a win' do
        board = Board.new(3)
        board.move(1, 0, 1)
        board.move(1, 1, 1)
        board.move(1, 2, 1)

        win_checker = WinChecker.new(board)

        expect(win_checker.winner?).to be true
      end

      it 'recognizes 3 in the third column as a win' do
        board = Board.new(3)
        board.move(1, 0, 2)
        board.move(1, 1, 2)
        board.move(1, 2, 2)

        win_checker = WinChecker.new(board)

        expect(win_checker.winner?).to be true
      end

      it 'recognizes 3 in the first diagonal as a win' do
        board = Board.new(3)
        board.move(1, 0, 0)
        board.move(1, 1, 1)
        board.move(1, 2, 2)

        win_checker = WinChecker.new(board)

        expect(win_checker.winner?).to be true
      end

      it 'recognizes 3 in the second diagonal as a win' do
        board = Board.new(3)
        board.move(1, 0, 2)
        board.move(1, 1, 1)
        board.move(1, 2, 0)

        win_checker = WinChecker.new(board)

        expect(win_checker.winner?).to be true
      end
    end

    context 'when player 2 is the winner' do
      it 'recognizes 3 in the first row as a win' do
        board = Board.new(3)
        board.move(2, 0, 0)
        board.move(2, 0, 1)
        board.move(2, 0, 2)

        win_checker = WinChecker.new(board)

        expect(win_checker.winner?).to be true
      end

      it 'recognizes 3 in the first column as a win' do
        board = Board.new(3)
        board.move(2, 0, 0)
        board.move(2, 1, 0)
        board.move(2, 2, 0)

        win_checker = WinChecker.new(board)

        expect(win_checker.winner?).to be true
      end

      it 'recognizes 3 in the first diagonal as a win' do
        board = Board.new(3)
        board.move(2, 0, 0)
        board.move(2, 1, 1)
        board.move(2, 2, 2)

        win_checker = WinChecker.new(board)

        expect(win_checker.winner?).to be true
      end
    end
  end
end
