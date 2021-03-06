class FixedArray

  class OutOfBoundsException < StandardError
  end

  def initialize(size)
    @arraySize = size
    @array = Array.new(size)
  end

  def get(index)
    if index >= @arraySize || index < 0
      raise OutOfBoundsException, "Error: Index out of bounds"
    end
    @array[index]
  end

  def set(index, element)
    if index >= @arraySize || index < 0
      raise OutOfBoundsException, "Error: Index out of bounds"
    end
    @array[index] = element
  end

  def size
    @arraySize
  end

end
