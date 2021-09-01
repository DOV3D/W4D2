require_relative "piece.rb"
require_relative "steppable.rb"

class Knight < Piece
  include Steppable

  def symbol
    "N"
  end

  private

  def move_diffs
    [[-2, -1], [-1, -2], [-2, 1], [-1, 2], [1, -2], [2, -1], [1, 2], [2, 1]]
  end

end