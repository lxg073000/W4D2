require_relative "./piece.rb"
require 'colorize'

class King < Piece
    def symbol
        '♔'.colorize(@color)
    end

    protected

    def move_diffs
    end
end