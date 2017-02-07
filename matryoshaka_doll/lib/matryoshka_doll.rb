class MatryoshkaDoll

  def initialize(inner_doll = nil)
    @inner_doll = inner_doll
  end

  def inner_dolls
    if @inner_doll.nil?
      0
    else
      @inner_doll.inner_dolls + 1
    end
  end

end
