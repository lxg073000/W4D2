require "byebug"

class Piece
    attr_reader :board, :color

    def initialize(color, board, pos)
        @color = color  # is a symbol
        @board = board  # is a Board instance
        @pos = pos      # is a Array 
    end    

    def to_s
        self.symbol 
    end

    def inspect
        self.symbol
    end

    def empty? 
    end

    def valid_moves?
    end

    def pos=(val)
    end

    def symbol
        
    end

    def move_into_check?(endpos)
    end
end