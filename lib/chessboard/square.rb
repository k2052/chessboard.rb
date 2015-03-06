class Square
  def initialize(square:, piece:)
    @square = Chess::Board.SQUARES[square]
    @piece  = piece

    elem.on :click click
  end

  def elem
    $document["##{board.id} square.#{dom_class}"]
  end

  def render
    DOM {
      div {

      }
    }
  end

  def update_position
  elem.style.apply {
  }
  end

  def to_s
    @square
  end

  def piece?
    piece
  end

  def destination?
    board.active_square? and !piece?
  end

  def click(event)
    if destination?
      board.move(board.active_square.algebraic, algebraic)
    elsif piece?
      board.active_square = self
      highlight
    end
  end
end
