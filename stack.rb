require_relative 'fixed_array'

class Stack

  attr_reader :count, :stack

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


end
