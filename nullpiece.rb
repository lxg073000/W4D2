require_relative "piece.rb"
require "Singleton"

class NullPiece < Piece 
    include Singleton 
    
    def initialize 

    end

    def moves
    end

    def symbol
        :_
    end

end