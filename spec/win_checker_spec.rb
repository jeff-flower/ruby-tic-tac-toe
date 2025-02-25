require './lib/board'
require './lib/win_checker'

describe 'WinChecker' do
  describe '#winner?' do
    it 'returns false when there is no winner' do
      board = Board.new(3, 3)
      win_checker = WinChecker.new(board)

      expect(win_checker.winner?).to be false
    end
  end
end
