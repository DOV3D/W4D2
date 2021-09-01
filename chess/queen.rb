require_relative "piece.rb"
require_relative "slideable.rb"

class Queen < Piece
  include Slideable

  def symbol
    "Q"
  end

  private

  def move_dirs
    horizontal_veritcal_dirs + diagonal_dirs
  end

end