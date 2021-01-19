require_relative './piece.rb'


class Board

  def initialize
    @rows = Array.new(8) {Array.new(8)}
    @null_piece = Null_piece.new()
    
  end


end
