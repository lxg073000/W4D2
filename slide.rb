require_relative './piece.rb'
require_relative '/slideable.rb'

class Slide < Piece
  include Slideable
  attr_reader :symbol

  private
  def move_dirs

  end

end