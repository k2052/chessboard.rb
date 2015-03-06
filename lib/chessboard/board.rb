class Board
  attr_accessor :orientation, :chess

  def initialize
    chess = Chess.new
  end

  def move(source, destination)
  end

  def render
    chess.squares.each do |square|
      _square = nil

      if square.piece?
        piece = Piece.new(square.piece)
        _square = Square.new(square, piece)
      end

      _square = Square.new(square)
      squares << _square
      elem.append(square.render)
    end
  end
end
