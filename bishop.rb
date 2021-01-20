require 'colorize'
require_relative 'piece'
require_relative 'slideable'

class Bishop < Piece
  include Slideable

  def symbol
    '♝'.colorize(@color)
  end

#   protected

  def move_dirs
    # return the directions in which a bishop can move
    # a bishop can move diagonally

    # check each subarry of diag_dirs, for each subarr
    # add each ele of the subarry to the current_pos of 
    # bishop.  Check if there's a piece & if pos is on
    # board.
    # For pos with piece, if piece is opposite color,
    # allow option to capture piece/take position, and
    # end turn
    # if there's no piece and pos is valid, add subarray
    # to new pos until no longer valid
    
    possible_pos = []
    @@DIAGONAL_DIRS.each do |dir|
        i = 1
        while valid_pos([@pos[0] + dir[0]*i, @pos[1] + dir[1]*i])
            possible_pos << [@pos[0] + dir[0]*i, @pos[1] + dir[1]*i]
            i += 1
        end
    end
    return possible_pos
end
            
            
def valid_pos(pos)
    return false if pos.any?{|i| i < 0 || i > 7 }
    true
end

end