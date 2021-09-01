require_relative "piece"
require "singleton"

class NullPiece < Piece
  include Singleton

  def initialize
  end

  def moves
  end

  def symbol
    "_"
  end

  # need a way to distinguish what color the square of NullPiece is on
  # maybe draw from Piece parent class ... parent class has color initialize method

end