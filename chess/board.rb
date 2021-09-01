require_relative "null_piece.rb"
require_relative "piece.rb"

class Board

  def initialize
    # setup the board with instances of Piece in locations where actual Pieces will be
    # nil where the NullPiece will start
    @null_piece = NullPiece.instance
    @rows = Array.new(8) { Array.new(8, @null_piece) }


  end

  def [](pos)
    row, col = pos
    @rows[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @rows[row][col] = val
  end

  # not outputting correct error message for valid_pos check
  def move_piece(start_pos, end_pos)
    #save whats at start_pos to variable so we can assign the variable to end_pos
    #replace start_pos with a null piece
    raise 'There is no piece at this start position' unless self[start_pos].is_a?(NullPiece)
    raise 'Piece cannot move to end position' unless valid_pos?(end_pos)

    piece = self[start_pos]
    self[end_pos] = piece

    self[start_pos] = null_piece
    # piece.pos = end_pos

    # update board after move is completed

  end

  def valid_pos?(pos)
  row, col = pos
  (row < 0 || col < 0) || (row > 7 || col > 7)
  end

  def add_piece(piece, pos)
    @rows.each_with_index do |row, i|
      row.each_with_index do |col, j|
        if i == 1
          @rows[i][j] = piece
        end
      end
    end
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