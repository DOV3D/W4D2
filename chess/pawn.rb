require_relative "piece.rb"

class Pawn < Piece

  def symbol
    "P"
  end

  def moves
    forward_steps + diagonal_attacks
  end

  private

  def at_start_row?
    #if color equals white it is on row 6, if black it is on row 1
    piece = board[pos]
    row, col = pos
    (piece.color == :white && row == 6) || piece.color == :black && row == 1)
  end

  def forward_dir: returns 1 or -1
    piece = board[pos]

      return -1 if !at_start_row? && piece.color == :black  
      return 1 if !at_start_row? && piece.color == :white

  end

  def forward_steps


  end

  def diagonal_attacks

  end



  def move_dirs

  end

end
