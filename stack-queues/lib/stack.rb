class Stack
  attr_reader :capacity, :container

  def initialize(capacity)
    @capacity = capacity
    @container = []
  end

  def length
    length = @container.length
    length.nil? ? 0 : length
  end

  def empty?
    @container.length == 0
  end

  def push(item)
    if @container.length < @capacity
      @container << item
    else
      raise StackOverflow.new("no room at the inn")
    end
  end

  def pop
    if @container.empty?
      raise StackUnderflow.new("the inn is empty")
    else
      item = @container.last
      @container.delete(item)
      item
    end
  end

  def peek
    if @container.empty?
      raise StackUnderflow.new("the inn is empty")
    else
      @container.last
    end
  end
end



class StackOverflow < StandardError
end

class StackUnderflow < StandardError
end
