require 'colorize'
require_relative "./piece.rb"
require_relative "slideable.rb"

class Queen < Piece
    include Slideable 
    def symbol
        '♕'.colorize(@color)
    end

    private

    def move_dirs
        self.horizontal_dirs + self.diagonal_dirs
    end
end