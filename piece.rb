require_relative "./board.rb"

class Piece
    def initialize(color, board, pos)
        @color = color  # is a symbol
        @board = board  # is a Board instance
        @pos = pos      # is a Array 
    end    

    def to_s
    end

    def empty? 
    end

    def valid_moves?
    end

    def pos=(val)
    end

    def Symbol
    end

    def move_into_check?(endpos)
    end
end