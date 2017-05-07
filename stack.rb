require_relative 'fixed_array'

class Stack

  attr_reader :count, :stack

  class StackOutOfBounds < StandardError
  end

  def initialize
    @stack = FixedArray.new(3)
    @count = 0
  end

  def push(element)
    @stack.set(@count, element)
    @count += 1
  end

  def empty?
    if @count == 0
      true
    else
      false
    end
  end

  def pop
    if !empty?
      @count -= 1
      toReturn = @stack.get(@count)
      @stack.set(@count, nil)
      toReturn
    else
      raise StackOutOfBounds, "Error: Stack is empty"
    end
  end

  def top
    if !empty?
      @stack.get(@count-1)
    else
      raise StackOutOfBounds, "Error: Stack is empty"
    end
  end

  def length
    @count
  end


end
