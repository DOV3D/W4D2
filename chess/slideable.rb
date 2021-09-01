
module Slideable

  HORIZONTAL_VERTICAL_DIRS = [[-1, 0], [0, 1], [1, 0], [0, -1]].freeze
  DIAGONAL_DIRS = [[-1, -1], [1, 1], [-1, 1], [1, -1]].freeze

  def horizontal_veritcal_dirs
    HORIZONTAL_VERTICAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end


  # Piece needs to
  # 1. Track position
  # 2. Hold a reference to the Board ... pos?

  # returning possible moves
  def moves
    pos_moves = []

    move_dirs.each do |dx, dy|
      pos_moves.concat(grow_unblocked_moves_in_dir(dx, dy))
    end

    pos_moves
  end

  private

  # overwritten by subclass
  def moves_dirs
    raise "This should have been overwritten by the subclass"
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    pos_moves = []
    current_x, current_y = pos
    
    checked = false
    until checked
      new_x = current_x + dx
      new_y = current_y + dy
      pos = [new_x, new_y]

      #need to check if its a valid_pos on the board
      if board.valid_pos?(pos)
        if empty?(pos)
          pos_moves << pos
        end
      #need to check if its our piece thats blocking it
      #need to check if its opponents piece blocking 
        if board[pos].color != color
          pos_moves << pos
          checked = true
        else
          checked = true
        end
      end
    end
    pos_moves
  end #unblocked_moves end

end #module end