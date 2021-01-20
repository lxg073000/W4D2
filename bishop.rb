require 'colorize'
require_relative 'piece'
require_relative 'slideable'

class Bishop < Piece
  include Slideable

  def symbol
    '♝'.colorize(@color)
  end

  protected

  def move_dirs
    self.diagonal_dirs
  end
end



# def valid_pos(pos)
#     return false if pos.any?{|i| i < 0 || i > 7 }
#     true
# end


  # possible_pos = []
  #   # diag_dir
  #   DIAGONAL_DIRS.each do |dir|
  #   #@@DIAGONAL_DIRS.each do |dir|
  #       i = 1
  #       while valid_pos([@pos[0] + dir[0]*i, @pos[1] + dir[1]*i])
  #           possible_pos << [@pos[0] + dir[0]*i, @pos[1] + dir[1]*i]
  #           i += 1
  #       end
  #   end
  #   return possible_pos