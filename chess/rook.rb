require_relative "piece.rb"
require_relative "slideable.rb"

class Rook < Piece
  include Slideable

  def symbol
    "R"
  end

  # or protected
  private

  def move_dirs
    horizontal_veritcal_dirs
  end

end