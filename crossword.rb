class WordSearch
  attr_reader :board

  def initialize
    @board = []
  end

  def create_board(x)
    board << x.upcase
  end

  def word_search(word)
    board.map.with_index do |line, index|
      # if line.include?(word)
        range = (line.index(word)...(word.length))
        @new_board = line.chars.map.with_index do |letter, index|
          if range.include?(index)
            letter
          else
            '+'
          end
        end.join
        print @new_board
    end
  end

end
game = WordSearch.new
until (x = gets.strip) == ''
  game.create_board(x)
end

puts game.board
input = gets.upcase.strip.split(', ')
input.each do |word|
  game.word_search(word)
end
