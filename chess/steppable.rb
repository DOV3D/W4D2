module Steppable

  def moves
    pos_moves = []

    move_diffs.each do |(dx, dy)|
      current_x, current_y = pos
      new_x = current_x + dx
      new_y = current_y + dy
      pos = [new_x, new_y]

      # need to check if board position is empty
      if board.valid_pos?(pos)
        if empty?(pos)
          pos_moves << pos
        # need to check if it's opponent piece
        elsif board[pos].color != color
          pos_moves << pos
        end
        # no need to check if it's our piece
      end
    end
    pos_moves
  end

  private

  def move_diffs
    # this should be overwritten by subclass
  end
end