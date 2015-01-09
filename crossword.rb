class WordSearch
  attr_reader :board

  def initialize
    @board = []
  end

  def create_board(x)
    board << x
  end

  def word_search(word)
    plus_board = board.map { |line| line.tr('a-z', '+') }
    board.map.with_index do |line, index|
      require 'pry'
      binding.pry
      index if line.include?(word)
    end
  end

end
game = WordSearch.new
until (x = gets.strip) == ''
  game.create_board(x)
end

puts game.board
input = gets.strip.split(', ')
input.each do |word|
  game.word_search(word)
end
