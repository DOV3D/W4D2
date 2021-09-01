
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


  end

  private

  # overwritten by subclass
  def moves_dirs
    raise "This should have been overwritten by the subclass"
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    pos_moves = []




  end


end