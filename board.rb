require_relative './piece.rb'
require_relative "./nullpiece.rb"

class Board

  def initialize
    @rows = Array.new(8) {Array.new(8)}
    # [ [ , , , , , , , ,] ,
    #   [ , , , , , , , ,],
    #   [ , , , , , , , ,],
    #   [ , , , , , , , ,],
    #   [ , , , , , , , ,],
    #   [ , , , , , , , ,],
    #   [ , , , , , , , ,],
    #   [ , , , , , , , ,] ]

    # iterate through every pos on board 
    # if pos is in row 0,1,6, or 7 ? initialize with a piece : null piece
    


    @null_piece = NullPiece.new
    
  end

  def [](pos)
  
  end

  def []=(pos, val)
  end

  def move_piece(color, start_pos, end_pos)
  end

  def valid_pos?(pos)
  end

  def add_piece(piece, pos)
  end

  def checkmate?(color)
  end

  def in_check?(color)
  end

  def find_king(color)
  end

  def pieces
  end

  def dup
  end

  def move_piece!(color, start_pos, end_pos)
  end
end
