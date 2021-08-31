require_relative "null_piece.rb"
require_relative "piece.rb"


class Board

  def initialize
    # setup the board with instances of Piece in locations where actual Pieces will be
    # nil where the NullPiece will start
    @rows = Array.new(8) { Array.new(8, nil) }
    @null_piece = NullPiece.new

  end

  def [](pos)
    row, col = pos
    @rows[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @rows[row][col] = value
  end


  def move_piece(color, start_pos, end_pos)
    raise 'There is no piece at this start position' unless @rows(start_pos).is_a?(Piece)

    row, col = end_pos
    raise 'Piece cannot move to end position' if (row < 0 || col < 0) || (row > 7 || col > 7)


    # update board after move is completed

  end

  def valid_pos?(pos)

  end

  def add_piece(piece, pos)

  end

  def checkmate?(color)

  end

  def in_check?(color)

  end

  def find_king(color)

  end

  def pieces

  end

  def dup

  end

  def move_piece!(color, start_pos, end_pos)

  end

end