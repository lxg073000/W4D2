require 'colorize'
require_relative "./piece.rb"

class Pawn < Piece 
    def symbol 
        '♙'.colorize(@color)
    end

    def moves 
    end

    private 
    def at_start_row?
    end

    def forward_dir 
    end

    def forward_steps
    end

    def side_attacks
    end
end