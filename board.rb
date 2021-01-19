require_relative "./piece.rb"
require_relative "./nullpiece.rb"

class Board
  attr_reader :rows

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
    @nullpiece = NullPiece.instance
    @rows = @rows.each_with_index do |row, i|
      row.each_with_index do |ele, j|
        if [0,1].include?(i)
          @rows[i][j] = Piece.new(:B, self, [i,j])
        elsif[6,7].include?(i)
          @rows[i][j] = Piece.new(:W, self, [i,j])
        else
          @rows[i][j] = @nullpiece
        end
      end
    end    
  end

  def [](pos)
    @rows[pos[0]][pos[1]]
  end

  def []=(pos, val)
    @rows[pos[0]][pos[1]] = val
  end

  def move_piece(start_pos, end_pos)
    raise 'there is no piece at start_pos' if !self[start_pos].is_a?(Piece)
    raise 'invalid position' if end_pos.any?{|i| i > 7 || i < 0}
    
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
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
