require_relative "./piece.rb"
require 'colorize'

class Rook < Piece
    def symbol
        '♖'.colorize(@color)
    end

    private

    def move_dirs
    end
end