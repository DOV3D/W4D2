require_relative "null_piece.rb"
require_relative "piece.rb"


class Board

  def initialize
    # setup the board with instances of Piece in locations where actual Pieces will be
    # nil where the NullPiece will start
    @null_piece = NullPiece.new
    @rows = Array.new(8) { Array.new(8, nil) }

  end

  def [](pos)
    row, col = pos
    @rows[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @rows[row][col] = value
  end


  def move_piece(start_pos, end_pos)
     #save whats at start_pos to variable so we can assign the variable to end_pos
     #replace start_pos with a null piece

    raise 'There is no piece at this start position' unless @rows(start_pos).is_a?(Piece)
    raise 'Piece cannot move to end position' if valid_pos?(end_pos)


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