
# sliding pieces: rook/bishop/queen
# stepable: knight, knight
# nullPiece: occupy emtpy space
# pawn


class Piece
  attr_reader :color, :board
  attr_accessor :pos

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos

  end


  # def moves
  #   raise "placeholder because we need to draw from subclass moves method"
  # end

  def to_s

  end
  #Does Piece class need to require board?
  def empty?(pos)
    board[pos].is_a?(NullPiece)
  end

  def valid_moves

  end

  def pos=(val)

  end

  def symbol

  end

  private

  def move_into_check?(end_pos)

  end





end
